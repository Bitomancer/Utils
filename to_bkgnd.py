__author__ = 'momo'

import os

RECORD_DIR = 'record'
OUTPUT = 'output.txt'
ALT = '"Alt"'
COMMENT = '\''
DIVIDER_1 = ' '
HWND = 'Hwnd'
BKGND_PREFIX = 'Call Plugin.Bkgnd.'

# directives
DELAY = 'Delay'
KEY_DOWN = 'KeyDown'
MOVE_TO = 'MoveTo'
LEFT_DOWN = 'LeftDown'
LEFT_CLICK = 'LeftClick'
LEFT_UP = 'LeftUp'

def get_xy(params):
    return params.split(', ')

def parse_delay(tuples, index):
    directive, params = tuples[index]
    return '%s %s' % (directive, params)

def parse_move_to(tuples, index):
    directive, params = tuples[index]
    x, y = get_xy(params)
    return '%s%s(%s, %s, %s)' % (BKGND_PREFIX, directive, HWND, x, y)

def parse_mouse(tuples, index):
    # find MoveTo
    i = 0
    previous_tuple = tuples[index - i]
    while previous_tuple[0] != MOVE_TO:
        i += 1
        previous_tuple = tuples[index - i]
    x, y = get_xy(previous_tuple[1])
    return '%s%s(%s, %s, %s)' % (BKGND_PREFIX, tuples[index][0], HWND, x, y)

def parse_left_down(tuples, index):
    return parse_mouse(tuples, index)

def parse_left_click(tuples, index):
    return parse_mouse(tuples, index)

def parse_left_up(tuples, index):
    return parse_mouse(tuples, index)

def main():
    raw_file = [f for f in os.listdir(RECORD_DIR)][0]

    raw_tuples = []
    is_script = False
    with open(os.path.join(RECORD_DIR, raw_file), 'r') as f:
        for line in f.readlines():
            line = line.strip()
            if len(line) == 0:
                continue

            if is_script:
                if line.startswith(COMMENT):
                    continue

                lindex = line.index(DIVIDER_1)
                directive = line[:lindex]
                params = line[lindex + 1:]
                raw_tuples.append((directive, params))
            else:
                if line == '[Script]':
                    is_script = True
                    continue

    # get rid of trailing 'Alt'
    trailing_index = 0
    raw_tuples.reverse()
    for index, raw_tuple in enumerate(raw_tuples):
        if raw_tuple[0] == DELAY or raw_tuple[0] == KEY_DOWN:
            pass
        else:
            trailing_index = index
            break
    del raw_tuples[:trailing_index]
    raw_tuples.reverse()

    # parse
    out_lines = []
    for index in range(len(raw_tuples)):
        directive = raw_tuples[index][0]
        if directive == DELAY:
            line = parse_delay(raw_tuples, index)
        elif directive == MOVE_TO:
            line = parse_move_to(raw_tuples, index)
        elif directive == LEFT_DOWN:
            line = parse_left_down(raw_tuples, index)
        elif directive == LEFT_CLICK:
            line = parse_left_click(raw_tuples, index)
        elif directive == LEFT_UP:
            line = parse_left_up(raw_tuples, index)
        else:
            print directive
        out_lines.append(line)

    # output
    with open(OUTPUT, 'w') as f:
        for line in out_lines:
            f.write(line + '\n')

if __name__ == '__main__':
    main()