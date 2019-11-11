#!/usr/bin/env bash

im_code=`fcitx-remote`

if [ ${im_code} == 1 ]
then
    im_status='#[bg=#80827f]en '
elif [ ${im_code} == 2 ]
then
    im_status='#[bg=##1ad626]zh'
else
    im_status='#[bg=#f21000]down'
fi

echo ${im_status}

