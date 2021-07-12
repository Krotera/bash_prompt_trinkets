#!/usr/bin/env bash
source color_defs

# Echo a random-colored "███████"
# Each of the seven blocks is randomly colored one of seven rainbow colors:
#     1. $RGB_RED
#     2. $RGB_ORANGE
#     3. $RGB_YELLOW
#     4. $RGB_GREEN
#     5. $RGB_CYAN
#     6. $RGB_BLUE
#     7. $RGB_VIOLET
# This means that getting all 7 of the same color is a 7/7^7 (~0.00085%) chance.
# Shaded blocks can be used by specifying args:
#     "dark" = ▓
#     "medium" = ▒
#     "light" = ░
function echo_randbow() {
    local BLOCK="$(echo_block $1)"
    local COLORS=($RGB_RED $RGB_ORANGE $RGB_YELLOW $RGB_GREEN $RGB_CYAN $RGB_BLUE $RGB_VIOLET)
    local RET=""

    for thing in ${COLORS[*]}
    do
        RET+="\[${ANSI_BOLD}\]\[${COLORS[$RANDOM % ${#COLORS[*]}]}\]${BLOCK}\[${ANSI_RESET}\]"
    done

    echo $RET
}

echo_randbow $@
