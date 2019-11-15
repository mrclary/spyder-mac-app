import os
import sys

if 'anaconda' in sys.executable:
    # user intends to use anaconda environment...
    os.environ.update({'PATH': os.path.dirname(sys.executable) + ':' + os.environ['PATH'],
                       'CONDA_PREFIX': sys.exec_prefix})

del os, sys
