@echo off
setlocal enabledelayedexpansion
cd /D %~dp0
  	FOR /F "tokens=1,2 delims=," %%A IN (IPList.txt) DO (
			cd "%~dp0\Files" && start cmd.exe /c bos-plus-toolbox.exe install %%A  --pool-user UpstreamDataInc.test --no-keep-pools --psu-power-limit 900 --no-nand-backup --post-upgrade ./sh --install-password admin
start chrome %%A
)