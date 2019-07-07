@rem
setlocal
if not defined DEVOPS_VMWARE_CMD  set DEVOPS_VMWARE_CMD=D:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe
@echo on
"%DEVOPS_VMWARE_CMD%" %*
@echo off
