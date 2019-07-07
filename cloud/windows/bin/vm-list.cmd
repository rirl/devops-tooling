@rem
@echo off
setlocal
if not defined DEVOPS_VMWARE_BIN  set DEVOPS_VMWARE_BIN="F:\devops-toolsets\devops-tooling\cloud\windows\bin"
call %DEVOPS_VMWARE_BIN%\vm-op.cmd  list