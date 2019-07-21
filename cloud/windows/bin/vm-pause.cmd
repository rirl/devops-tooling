@rem
@echo off
setlocal
echo wait [%1]...
ping 127.0.0.1 -n 2   > nul
ping 127.0.0.1 -n %1  > nul