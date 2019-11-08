#!/bin/bash

if [[ -e /etc/profile ]]; then
    source /etc/profile
fi
if [[ -e ~/.bash_profile ]]; then
    source ~/.bash_profile
fi

if [[ -d ~/anaconda3/envs/spyder-env ]]; then
    ~/anaconda3/bin/activate spyder-env
    ~/anaconda3/envs/spyder-env/bin/spyder $@
elif [[ -d ~/anaconda3 ]]; then
    ~/anaconda3/bin/activate base
    ~/anaconda3/bin/spyder $@
fi
