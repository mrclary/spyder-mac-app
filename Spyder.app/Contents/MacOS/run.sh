#!/bin/bash

[[ -e /etc/profile ]] && source /etc/profile        # mdsplus and latex paths
[[ -e ~/.bash_profile ]] && source ~/.bash_profile  # PYTHONPATH, anaconda path, mdsplus tree paths

if [[ -e ~/anaconda3/envs/spyder-env || -e ~/.conda/envs/spyder-env || -e /opt/anaconda3/envs/spyder-env ]]; then
	conda activate spyder-env
fi

spyder $@
