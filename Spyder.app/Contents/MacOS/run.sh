#!/bin/bash

[[ -e /etc/profile ]] && source /etc/profile        # mdsplus and latex paths
[[ -e ~/.bash_profile ]] && source ~/.bash_profile  # PYTHONPATH, anaconda path, mdsplus tree paths

if [[ -e ~/anaconda3/envs/spyder-env ]]; then
	~/anaconda3/envs/spyder-env/bin/spyder $@
fi
