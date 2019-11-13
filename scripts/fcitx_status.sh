#!/usr/bin/env bash
# fcitx_status.sh
# diphia@2019
# This script is used to get the fcitx status from command, and it will add the color to the string 

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${CURRENT_DIR}/settings_fetcher.sh"

fcitx_status_en_default="#[bg=#80827f]"
fcitx_status_zh_default="#[bg=#1ad626]"
fcitx_status_down_default="#[bg=#f21000]"

im_code=`fcitx-remote`

if [ ${im_code} == 1 ]
then
    #im_status='#[bg=#80827f] en '
    #im_status=""$(get_tmux_option "@fcitx_status_en" "${fcitx_status_en_default}")" en"
    im_status=""$(get_tmux_option "@fcitx_status_en" "${fcitx_status_en_default}")" en"
elif [ ${im_code} == 2 ]
then
    #im_status='#[bg=##1ad626] zh '
    im_status=""$(get_tmux_option "@fcitx_status_zh" "${fcitx_status_zh_default}")" zh"
else
    #im_status='#[bg=#f21000] down '
    im_status=""$(get_tmux_option "@fcitx_status_down" "${fcitx_status_down_default}")" down"
fi

echo ${im_status}
