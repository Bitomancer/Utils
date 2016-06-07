import os
import json
import codecs
import requests

RENAME = False
CACHE = True
CACHE_FILE = 'cache.txt'
SONG_FILE = 'song.txt'
PIC_FILE = 'pic.txt'
SONG_DIR = 'song'
PIC_DIR = 'pics'

def write_to_cache(obj_list):
    with codecs.open(CACHE_FILE, 'w', 'utf-8') as f:
        f.write(json.dumps(obj_list, indent=4, separators=(',', ': ')))


def get_obj_list(s):
    if CACHE and os.path.exists(CACHE_FILE):
        with codecs.open(CACHE_FILE, 'r', 'utf-8') as f:
            return json.loads(f.read())
    url = r'http://egapp.5054399.com/api/android/v2/and_service.php?act=subjectdetail&colid=1184&p='
    r = s.get(url + '1')
    obj_list = []
    result = r.json()['result']
    i = 2
    while len(result) > 0:
        obj_list.extend(result)
        r = s.get(url + str(i))
        result = r.json()['result']
        i += 1
    write_to_cache(obj_list)
    return obj_list


def main():
    s = requests.session()
    obj_list = get_obj_list(s)
    print len(obj_list)
    if not os.path.exists(SONG_DIR):
        os.makedirs(SONG_DIR)
    if not os.path.exists(PIC_DIR):
        os.makedirs(PIC_DIR)
    with open(SONG_FILE, 'w') as fs, open(PIC_FILE, 'w') as fp:
        for obj in obj_list:
            fs.write(obj['video'] + '\n')
            fp.write(obj['pic'] + '\n')

    if RENAME:
        name_hash = {}
        for obj in obj_list:
            if obj['title'] in name_hash:
                name_hash[obj['title']] += 1
                filename = obj['title'] + '_0' + str(name_hash[obj['title']])
                print filename
            else:
                name_hash[obj['title']] = 1
                filename = obj['title']
            song_src = SONG_DIR + '/' + os.path.basename(obj['video'])
            song_dest = SONG_DIR + '/' + filename + '.mp4'
            pic_src = PIC_DIR + '/' + os.path.basename(obj['pic'])
            pic_dest = PIC_DIR + '/' + filename + '.jpg'
            os.rename(song_src, song_dest)
            os.rename(pic_src, pic_dest)


if __name__ == '__main__':
    main()