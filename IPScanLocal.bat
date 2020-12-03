@echo off
setlocal enabledelayedexpansion
del IP.txt
del IPList.txt
cd %~dp0
(Files\bos-plus-toolbox.exe discover scan 172.16.1.0/24)>>IP.txt
FOR /F "usebackq delims=" %%G IN ("IP.txt") DO (
	set line=%%G
	set "line=!line:~19, 13!"
	if not "!line!"=="!line: =!" (
     		set "line=!line:~0, -1!"
	)
		SET "line=!line:)=!"
	echo !line!
	) >>IPList.txt