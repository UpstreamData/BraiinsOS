@echo off
setlocal enabledelayedexpansion
rem ask for wattage to tune to
set /p line=Tuning Wattage:
for /f %%A IN (IPList.txt) DO (

	rem copy bosminer file to localhost - tuning.toml

	scp -o "StrictHostKeyChecking no" root@%%~A:/etc/bosminer.toml "%~dp0tuning.toml"
	cd /D %~dp0

	rem replace tuning wattage in tuning.toml

	set "hostsFile=tuning.toml"
	(
		findstr /v /i /c:"psu_power_limit" "!hostsFile!"
		echo psu_power_limit = !line!
	) > "%temp%\hosts"
	move /y "%temp%\hosts" "tuning.toml" >nul 2>nul

	cd /D %~dp0

	rem upload tuning.toml

	scp -o "StrictHostKeyChecking no" "%~dp0tuning.toml" root@%%~A:/etc/bosminer.toml
	ssh -o "StrictHostKeyChecking no" root@%%~A /sbin/reboot
)
del tuning.toml


