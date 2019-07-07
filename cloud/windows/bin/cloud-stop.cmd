@rem
@echo off
setlocal
if not defined DEVOPS_VMWARE_BIN  set DEVOPS_VMWARE_BIN="F:\devops-toolsets\devops-tooling\cloud\windows\bin"

echo BEFORE CLOUD STOP
call %DEVOPS_VMWARE_BIN%\vm-list.cmd 

call %DEVOPS_VMWARE_BIN%\vm-stop.cmd E:\Users\rirl\Documents\Virtual Machines\do-wrk-01\do-wrk-01.vmx
call %DEVOPS_VMWARE_BIN%\vm-stop.cmd E:\Users\rirl\Documents\Virtual Machines\do-wrk-02\do-wrk-02.vmx
call %DEVOPS_VMWARE_BIN%\vm-stop.cmd E:\Users\rirl\Documents\Virtual Machines\do-wrk-03\do-wrk-03.vmx
call %DEVOPS_VMWARE_BIN%\vm-stop.cmd E:\Users\rirl\Documents\Virtual Machines\do-wrk-04\do-wrk-04.vmx

call %DEVOPS_VMWARE_BIN%\vm-stop.cmd E:\Users\rirl\Documents\Virtual Machines\do-mgr-02\do-mgr-02.vmx
call %DEVOPS_VMWARE_BIN%\vm-stop.cmd E:\Users\rirl\Documents\Virtual Machines\do-mgr-01\do-mgr-01.vmx

echo AFTER CLOUD STOP
call %DEVOPS_VMWARE_BIN%\vm-list.cmd 