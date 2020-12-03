@echo off
setlocal enabledelayedexpansion
del IPScanResults1.txt
del IPList.txt
	FOR /L %%z IN (5,1,255) DO @(
	ssh -o "StrictHostKeyChecking no"  -o "ConnectTimeout=1" root@192.168.1.%%z "ip addr && exit" | FIND /i "inet 192.">>IPScanResults1.txt
	)
	FOR /F "usebackq delims=" %%G IN ("IPScanResults1.txt") DO (
		set line=%%G
		set line=!line: =!
		set "line=!line:~4, 13!"
		if not "!line!"=="!line:/=!" (
       			set "line=!line:~0, -1!"
		)
			if not "!line!"=="!line:/=!" (
       			set "line=!line:~0, -1!"
		)
		echo !line!
		) >>IPList.txt