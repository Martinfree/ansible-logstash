
PLAY [Install dep] *************************************************************

TASK [Gathering Facts] *********************************************************
ok: [172.24.201.36]

TASK [include_vars] ************************************************************
ok: [172.24.201.36]

TASK [include_vars] ************************************************************
ok: [172.24.201.36]

TASK [install dependencies for nginx] ******************************************
changed: [172.24.201.36]

TASK [unarchive] ***************************************************************
ok: [172.24.201.36]

TASK [Download modsecurity nginx connector] ************************************
ok: [172.24.201.36]

TASK [Install connector] *******************************************************
fatal: [172.24.201.36]: FAILED! => {"changed": true, "cmd": "sh config", "delta": "0:00:00.003530", "end": "2021-04-20 11:47:08.858586", "msg": "non-zero return code", "rc": 127, "start": "2021-04-20 11:47:08.855056", "stderr": "config: 55: .: Can't open auto/feature", "stderr_lines": ["config: 55: .: Can't open auto/feature"], "stdout": "", "stdout_lines": []}

PLAY RECAP *********************************************************************
172.24.201.36              : ok=6    changed=1    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

