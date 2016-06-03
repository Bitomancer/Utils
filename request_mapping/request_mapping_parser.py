# -*- coding: utf-8 -*-

from __future__ import print_function

import os
from os.path import *
import json
import fnmatch
import plyj.parser as plyj

ROOT_DIR = r'D:\Workspace\Java'
#EXCLUDE_DIRS = ['account', 'pg', 'yun-static']
EXCLUDE_DIRS = ['pg', 'yun-static']
OUTPUT = 'mapping'


class RequestMapping(object):

    def __init__(self):
        self.urls = []
        self.method = ''
        self.http_methods = []

    def add_url(self, url):
        self.urls.append(url)

    def add_http_method(self, http_method):
        self.http_methods.append(http_method)

    def to_dict(self):
        return {'urls': self.urls, 'method': self.method, 'http_methods': self.http_methods}


class Controller(object):

    def __init__(self):
        self.module = ''
        self.name = ''
        self.path = ''
        self.root_urls = []
        self.request_mappings = []

    def add_request_mapping(self, request_mapping):
        self.request_mappings.append(request_mapping)

    def to_dict(self):
        request_mappings_dict_list = [x.to_dict() for x in self.request_mappings]
        return {'module': self.module, 'name': self.name, 'path': self.path, 'root_urls': self.root_urls, 'request_mappings': request_mappings_dict_list}

    @staticmethod
    def list_to_dict(controllers):
        return [x.to_dict() for x in controllers]


def main():
    # init
    parser = plyj.Parser()

    modules = [f for f in os.listdir(ROOT_DIR) if isdir(join(ROOT_DIR, f)) and f not in EXCLUDE_DIRS]
    json_obj = {}
    for i1, module in enumerate(modules):
        controllers_path = []
        controllers = []
        for root, dirs, files in os.walk(join(ROOT_DIR, module)):
            for filename in fnmatch.filter(files, '*Controller.java'):
                controllers_path.append(join(root, filename))
        for i2, controller_path in enumerate(controllers_path):
            tree = parser.parse_file(controller_path)
            if tree.type_declarations is None or len(tree.type_declarations) == 0:
                continue
            controller = Controller()
            controller.module = module
            controller.name = os.path.basename(controller_path)[:-5]
            controller.path = controller_path

            controller.root_urls = get_root_urls(tree)
            for item in tree.type_declarations[0].body:
                if type(item).__name__ == 'MethodDeclaration':
                    mapping = get_request_mapping(item)
                    if mapping is not None:
                        controller.add_request_mapping(mapping)
            controllers.append(controller)
        json_obj[module] = Controller.list_to_dict(controllers)
    to_md_file(json_obj)

    print('Done')


def get_root_urls(tree):
    ret = []
    modifiers = tree.type_declarations[0].modifiers
    for modifier in modifiers:
        if type(modifier) is str:
            continue
        if type(modifier).__name__ == 'Annotation' and modifier.name.value == 'RequestMapping':
            value = None

            # use modifier.members
            if len(modifier.members) == 0:
                ret.append(modifier.single_member.value[1:-1])
            # use members
            for member in modifier.members:
                if member.name.value == 'value':
                    # ArrayInitializer
                    if type(member.value).__name__ == 'ArrayInitializer':
                        for element in member.value.elements:
                            ret.append(element.value[1:-1])
                    # Literal
                    else:
                        ret.append(member.value.value[1:-1])
                    break
            break
    return ret


def get_request_mapping(item):
    ret = None
    for modifier in item.modifiers:
        if type(modifier) is str:
            continue
        if type(modifier).__name__ == 'Annotation' and modifier.name.value == 'RequestMapping':
            value = None
            method = None

            mapping = RequestMapping()
            mapping.method = item.name

            # use modifier.members
            if len(modifier.members) == 0 and modifier.single_member is None:
                break
            elif len(modifier.members) == 0:
                mapping.add_url(modifier.single_member.value[1:-1])
                break
            # use members
            for member in modifier.members:
                if member.name.value == 'value':
                    value = member
                elif member.name.value == 'method':
                    method = member

            if value:
                # ArrayInitializer
                if type(value.value).__name__ == 'ArrayInitializer':
                    for element in value.value.elements:
                        mapping.add_url(element.value[1:-1])
                # Literal
                else:
                    mapping.add_url(value.value.value[1:-1])

            if method:
                # ArrayInitializer
                if type(method.value).__name__ == 'ArrayInitializer':
                    for element in method.value.elements:
                        http_method = element.value
                        if 'RequestMethod.' in http_method:
                            http_method = http_method.split('.')[1]
                        mapping.add_http_method(http_method)
                else:
                    http_method = method.value.value
                    if 'RequestMethod.' in http_method:
                        http_method = http_method.split('.')[1]
                    mapping.add_http_method(http_method)
            ret = mapping
            break
    return ret


def to_json_file(json_obj):
    with open(OUTPUT + '.json', 'w') as f:
        f.write(json.dumps(json_obj, sort_keys=True, indent=4, separators=(',', ': ')))


def to_md_file(json_obj):
    header_str = 'name | method | http | root | mapping\n---|---|---|---|---'
    with open(OUTPUT + '.md', 'w') as f:
        for module, controllers in json_obj.iteritems():
            module_str = '### ' + module
            print(module_str, file=f)
            print(header_str, file=f)
            for controller in controllers:
                name = controller['name']
                path = controller['path']
                root_urls = controller['root_urls']
                for request_mapping in controller['request_mappings']:
                    name_str = '[%s](file:///%s)' % (name, path)
                    ctrl_str = '%s | %s | %s | %s | %s' % (name, request_mapping['method'], ', '.join(request_mapping['http_methods']), ', '.join(root_urls), ', '.join(request_mapping['urls']))
                    print(ctrl_str, file=f)
            print('', file=f)


if __name__ == '__main__':
    main()