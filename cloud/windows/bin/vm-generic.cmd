@rem
@echo off
setlocal
if not defined DEVOPS_VMWARE_BIN  set DEVOPS_VMWARE_BIN="F:\devops-toolsets\devops-tooling\cloud\windows\bin"

echo BEFORE GENERIC
call %DEVOPS_VMWARE_BIN%\vm-list.cmd 
@pause

@rem k8s master
@rem echo "K8S Master"
@rem call %DEVOPS_VMWARE_BIN%\vm-op.cmd start "E:\Users\rirl\Documents\Virtual Machines\do-mgr-02\do-mgr-02.vmx" nogui
@rem call %DEVOPS_VMWARE_BIN%\vm-pause.cmd 60


call %DEVOPS_VMWARE_BIN%\vm-op.cmd start "E:\Users\rirl\Documents\Virtual Machines\do-mgr-04\do-mgr-04.vmx" nogui

echo AFTER  GENERIC
call %DEVOPS_VMWARE_BIN%\vm-list.cmd 