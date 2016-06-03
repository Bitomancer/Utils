import os
import shutil
import requests
import time
import json
import codecs

CACHE = False
CACHE_FILE = u'cache.txt'
USERNAME = u'agentg2014@163.com'
PASSWORD = u'259dbe9ecab200cf7dd58f0e1a8321ed'
COMPUTER_USERNAME = u'Administrator'
SRC_DIR = os.path.join(r'C:\Users', COMPUTER_USERNAME, r'AppData\Local\YNote\data', USERNAME)
DEST_DIR = 'D:\Youdao'


def get_13_digit_unix_timestamp():
    return int(time.time() * 1000)


def get_auth(s):
    url = 'https://note.youdao.com/login/acc/login?product=YNOTE&app=client&ClientVer=40800000002&GUID=PC5c675617cf0a72a51&client_ver=40800000002&device_id=PC5c675617cf0a72a51&device_name=GLODON-PC&device_type=PC&keyfrom=pc&os=Windows&os_ver=Windows%207&vendor=website&show=true&tp=urstoken&username=' + USERNAME + '&password=' + PASSWORD + '&cf=6'

    r = s.get(url, verify=False)
    return r.cookies['YNOTE_SESS'], r.cookies['YNOTE_LOGIN']


def write_to_cache(obj_list):
    with codecs.open(CACHE_FILE, 'w') as f:
        f.write(json.dumps(obj_list, indent=4, separators=(',', ': ')))


def get_obj_list(s):
    if CACHE and os.path.exists(CACHE_FILE):
        with open(CACHE_FILE, 'r') as f:
            return json.loads(f.read())
    start_url = 'https://note.youdao.com/yws/api/personal/sync?method=pull&ClientVer=40800000002&GUID=PC5c675617cf0a72a51&baseVersion=-1&client_ver=40800000002&device_id=PC5c675617cf0a72a51&device_name=GLODON-PC&device_type=PC&keyfrom=pc&limit=300&os=Windows&os_ver=Windows%207&subvendor=&vendor=website'
    ynote_sess, ynote_login = get_auth(s)
    cookies = {
        'YNOTE_SESS': ynote_sess,
        'YNOTE_LOGIN': ynote_login,
    }
    r = s.get(start_url, cookies=cookies, verify=False)
    ret = r.json()
    last_id = ret['truncatedMarker']
    obj_list = []
    obj_list.extend(ret['values'])
    while last_id is not None:
        url = start_url + '&lastId=' + last_id
        r = s.get(url, cookies=cookies, verify=False)
        ret = r.json()
        last_id = ret['truncatedMarker']
        obj_list.extend(ret['values'])
    if CACHE:
        write_to_cache(obj_list)
    return obj_list


def get_local_file_map():
    ret = {}
    for f in os.listdir(SRC_DIR):
        if len(f) == 32:
            assert len(os.listdir(os.path.join(SRC_DIR, f))) == 1
            f_fullpath = os.path.join(SRC_DIR, f, os.listdir(os.path.join(SRC_DIR, f))[0])
            f_size = os.path.getsize(f_fullpath)
            ret[(os.listdir(os.path.join(SRC_DIR, f))[0], f_size)] = f_fullpath
    return ret


def get_copy_file_list(obj_list):
    local_file_map = get_local_file_map()
    not_deleted_map = {obj['entry']['id']: obj for obj in obj_list if obj['entry']['deleted'] == False}
    not_deleted_file_map = {obj['entry']['id']: obj for obj in obj_list if obj['entry']['deleted'] == False and obj['entry']['fileSize'] > 0}

    copy_file_list = []
    for key, value in not_deleted_file_map.iteritems():
        entry = value['entry']
        name_size_tuple = (entry['name'], entry['fileSize'])
        src = local_file_map[name_size_tuple]
        dest = entry['name']
        while not_deleted_map[entry['parentId']]['entry']['name'] != 'ROOT':
            parent_entry = not_deleted_map[entry['parentId']]['entry']
            dest = os.path.join(parent_entry['name'], dest)
            entry = parent_entry
        dest = os.path.join(DEST_DIR, dest)
        copy_file_list.append((src, dest))

    return copy_file_list


def copy_file_or_create_folder(src, dest):
    if not os.path.exists(os.path.dirname(dest)):
        os.makedirs(os.path.dirname(dest))
    shutil.copyfile(src, dest)


def main():
    # remove DEST_DIR first
    shutil.rmtree(DEST_DIR)

    s = requests.session()
    obj_list = get_obj_list(s)
    copy_file_list = get_copy_file_list(obj_list)

    for src, dest in copy_file_list:
        copy_file_or_create_folder(src, dest)

if __name__ == '__main__':
    main()