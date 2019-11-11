#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#CURRENT_DIR="/home/diphia/tmux-fcitx-status"
#tmux run-shell "$CURRENT_DIR/scripts/fcitx-status.sh"
#echo ${CURRENT_DIR}

get_tmux_option() {
    local option=$1
    local default_value=$2
    local option_value="$(tmux show-option -gqv "${option}")"
    if [[ -z "${option_value}" ]]
    then
        echo "${default_value}"
        #printf "${default_value}"
    else
        echo "${option_value}"
        #printf "${option_value}"
    fi
}

set_tmux_option() {
    local option=$1
    local value=$2
    tmux set-option -gq "${option}" "${value}"
}

do_interpolation() {
    local input=$1
    local result=""
    result="${input}#{fcitx_status}#(${CURRENT_DIR}/scripts/fcitx_status.sh)"
    # result=""
    #printf "${result}"
    echo ${result}
}

update_tmux_option() {
	local option=$1
	local option_value=$(get_tmux_option "$option")
	local new_option_value=$(do_interpolation "$option_value")
	set_tmux_option "${option}" "${new_option_value}"
}


main() {
	update_tmux_option "status-right"
	#update_tmux_option "status-left"
}

#do_interpolation 
main

#get_tmux_option "status-right" "bbb"
#set_tmux_option "status-right" "bbb"


comment(){
current=`tmux show-option -gqv "status-right"`
echo "1:${current}"
interpolated="`source ${CURRENT_DIR}/scripts/fcitx_status.sh` ${current} "
#echo ${interpolated}
tmux set-option -gq status-right "${interpolated}"
}
