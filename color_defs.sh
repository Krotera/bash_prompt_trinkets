#!/usr/bin/env bash
# ANSI colors
# https://misc.flogisoft.com/bash/tip_colors_and_formatting
#
# Using the escape char (any of '\e', '\033', or '\x1B') in '\e[_m'
#     where '_' is a format and/or color code like '31'
# in '\[_\]'
#     where '_' is the color code like '\e[31m'
# The '\[' and '\]', however, need to stay in the prompt; they can't go into variables.
#
# 8/16 colors:
# set
#     0    reset all attributes
#     1    bold/bright
#     2    dim
#     4    underline
#     5    blink
#     7    reverse (invert fg, bg colors)
#     8    hidden
ANSI_RESET='\e[0m'
ANSI_BOLD='\e[1m'
ANSI_DIM='\e[2m'
ANSI_UNDERLINE='\e[4m'
ANSI_BLINK='\e[5m'
ANSI_REVERSE='\e[7m'
ANSI_HIDDEN='\e[8m'
# reset
#     21    reset bold/bright
#     22    reset dim
#     24    reset underline
#     25    reset blink
#     27    reset reverse
#     28    reset hidden
ANSI_RESET_BOLD='\e[21m'
ANSI_RESET_DIM='\e[22m'
ANSI_RESET_UNDERLINE='\e[24m'
ANSI_RESET_BLINK='\e[25m'
ANSI_RESET_REVERSE='\e[27m'
ANSI_RESET_HIDDEN='\e[28m'
# fg colors (text)
#     39    default fg color
#     30    black
#     31    red
#     32    green
#     33    yellow
#     34    blue
#     35    magenta
#     36    cyan
#     37    light gray
#     90    dark gray
#     91    light red
#     92    light green
#     93    light yellow
#     94    light blue
#     95    light magenta
#     96    light cyan
#     97    white
ANSI_DEFAULT='\e[39m'
ANSI_BLACK='\e[30m'
ANSI_RED='\e[31m'
ANSI_GREEN='\e[32m'
ANSI_YELLOW='\e[33m'
ANSI_BLUE='\e[34m'
ANSI_MAGENTA='\e[35m'
ANSI_CYAN='\e[36m'
ANSI_LGRAY='\e[37m'
ANSI_DGRAY='\e[90m'
ANSI_LRED='\e[91m'
ANSI_LGREEN='\e[92m'
ANSI_LYELLOW='\e[93m'
ANSI_LBLUE='\e[94m'
ANSI_LMAGENTA='\e[95m'
ANSI_LCYAN='\e[96m'
ANSI_WHITE='\e[97m'
# bg colors
#     49    default bg color
#     40    black
#     41    red
#     42    green
#     43    yellow
#     44    blue
#     45    magenta
#     46    cyan
#     47    light gray
#     100    dark gray
#     101    light red
#     102    light green
#     103    light yellow
#     104    light blue
#     105    light magenta
#     106    light cyan
#     107    white
ANSI_BG_DEFAULT='\e[49m'
ANSI_BG_BLACK='\e[40m'
ANSI_BG_RED='\e[41m'
ANSI_BG_GREEN='\e[42m'
ANSI_BG_YELLOW='\e[43m'
ANSI_BG_BLUE='\e[44m'
ANSI_BG_MAGENTA='\e[45m'
ANSI_BG_CYAN='\e[46m'
ANSI_BG_LGRAY='\e[47m'
ANSI_BG_DGRAY='\e[100m'
ANSI_BG_LRED='\e[101m'
ANSI_BG_LGREEN='\e[102m'
ANSI_BG_LYELLOW='\e[103m'
ANSI_BG_LBLUE='\e[104m'
ANSI_BG_LMAGENTA='\e[105m'
ANSI_BG_LCYAN='\e[106m'
ANSI_BG_WHITE='\e[107m'
# used combos
ANSI_BOLD_GREEN='\e[1;32m'
ANSI_BOLD_LGRAY='\e[1;37m'
#
# E.g.,
# '\[\e[31m\]' is red. Equivalently: '\e[0;31m'
# With variables: '\[${ANSI_RED}\]'
# '\[\e[1;32m\]' is BOLD/BRIGHT red.
# '\[\e[5;32m\]' is blinking red.
# '\[\e[42m\]' is green bg.
# '\[\e[5;31;42m\]' is blinking red with green bg.
# Use 'echo -e' to test these.
# In PS1 setting line, use "" not '' because "" evaluates while '' would print the codes themselves.
#
# True (24-bit) RGB colors also available, usually.
# These are nicer because the numbers are contiguous in the range 0..256.
# Use '\[\e[38;2;R;G;Bm\]' for foreground and '\[\e[48;2;R;G;Bm\]' for background,
# where 'R', 'G', and 'B' are color values in 0..255.
# 38 is the xterm-256 extended foreground color code, and 48 is the background code.
# The ;2 indicates the format of the color, specifying a full 24-bit RGB
# format requiring 3 control segments.
# Source: https://stackoverflow.com/a/26665998
RGB_RED='\e[38;2;255;0;0m'
RGB_ORANGE='\e[38;2;255;127;0m'
RGB_YELLOW='\e[38;2;255;255;0m'
RGB_GREEN='\e[38;2;0;255;0m'
RGB_CYAN='\e[38;2;0;255;255m'
RGB_BLUE='\e[38;2;0;0;255m'
RGB_VIOLET='\e[38;2;127;0;255m'
