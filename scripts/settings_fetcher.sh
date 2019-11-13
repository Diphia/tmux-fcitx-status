#!/usr/bin/env bash
# settings_fetcher.sh
# diphia@2019
# This script is used to fetch the tmux options 

get_tmux_option(){
    local option="$1"
    local default_value="$2"
    local option_value="$(tmux show-option -gqv "${option}")"
    if [ -z "${option_value}" ]
    then
        echo "${default_value}"
    else
        echo "${option_value}"
    fi
}
