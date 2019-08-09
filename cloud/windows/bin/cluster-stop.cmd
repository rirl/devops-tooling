@rem
@echo off
setlocal
if not defined DEVOPS_VMWARE_BIN  set DEVOPS_VMWARE_BIN="F:\devops-toolsets\devops-tooling\cloud\windows\bin"

echo BEFORE CLUSTER STOP
call %DEVOPS_VMWARE_BIN%\vm-list.cmd 

echo "K8S Node 2"
call %DEVOPS_VMWARE_BIN%\vm-op.cmd stop "E:\Users\rirl\Documents\Virtual Machines\do-wrk-02\do-wrk-02.vmx" nogui
call %DEVOPS_VMWARE_BIN%\vm-pause.cmd 5


echo "K8S Node 1"
call %DEVOPS_VMWARE_BIN%\vm-op.cmd stop "E:\Users\rirl\Documents\Virtual Machines\do-wrk-01\do-wrk-01.vmx" nogui
call %DEVOPS_VMWARE_BIN%\vm-pause.cmd 5


echo "K8S Node 4"
call %DEVOPS_VMWARE_BIN%\vm-op.cmd stop "E:\Users\rirl\Documents\Virtual Machines\do-wrk-04\do-wrk-04.vmx" nogui
call %DEVOPS_VMWARE_BIN%\vm-pause.cmd 5

echo "K8S Master"
call %DEVOPS_VMWARE_BIN%\vm-op.cmd stop "E:\Users\rirl\Documents\Virtual Machines\do-mgr-02\do-mgr-02.vmx" nogui
call %DEVOPS_VMWARE_BIN%\vm-pause.cmd 30

echo "K8S Node 4 NFS"
call %DEVOPS_VMWARE_BIN%\vm-op.cmd start "E:\Users\rirl\Documents\Virtual Machines\do-wrk-04\do-wrk-04.vmx" nogui
call %DEVOPS_VMWARE_BIN%\vm-pause.cmd 15

echo AFTER  CLUSTER STOP
call %DEVOPS_VMWARE_BIN%\vm-list.cmd 