#!/bin/bash

chmod -r 777 /workspace
ln -s /workspace /root/.wine/drive_c/workspace
chmod -r 777 /root/.wine/drive_c/workspace

# ls /root/.wine/drive_c
# ls /root/.wine/drive_c/workspace
ls -lha /workspace
# ls /
wine --version
wine "C:/lazarus/lazbuild.exe" "C:/workspace/project1.lpr"
