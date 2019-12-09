import os
import sys

if 'anaconda' in sys.executable:
    # user intends to use anaconda environment...
    path = os.environ['PATH'].split(':')
    path[0] = os.path.dirname(sys.executable)  # replace spyder-env path with anaconda environment path
    os.environ.update({'PATH': ':'.join(path), 'CONDA_PREFIX': sys.exec_prefix})

del os, sys, path
