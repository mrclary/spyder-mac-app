#!/bin/bash

[[ -e /etc/profile ]] && source /etc/profile        # mdsplus and latex paths
[[ -e ~/.bash_profile ]] && source ~/.bash_profile  # PYTHONPATH, anaconda path, mdsplus tree paths

if [[ -e ~/anaconda3/envs/spyder-beta || -e ~/.conda/envs/spyder-beta || -e /opt/anaconda3/envs/spyder-beta ]]; then
	conda activate spyder-beta
fi

spyder $@
