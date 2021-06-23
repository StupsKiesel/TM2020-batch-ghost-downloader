@echo off
rem USEAGE: filter.bat textfile.txt (only one line in file)
set arg1=%1
rem - https://beautifytools.com/html-to-multi-line-data-converter.php
rem - https://prod.trackmania.core.nadeo.online/storageObjects/{storageObjectId}.ghost.gbx

SetLocal EnableExtensions DisableDelayedExpansion
For /F Tokens^=*EOL^= %%G In (
    '%__APPDIR__%findstr.exe /IR "href=\".* " "%arg1%"'
) Do (Set "Line=%%G" & SetLocal EnableDelayedExpansion
    For /F Tokens^=2Delims^=^" %%H In ("!Line:*href=!") Do Set "URL=%%H")
	




IF "%URL:~0,1%"=="#" (
	exit /b
)


IF "%URL:~0,1%"=="/" (
	echo Ghost ID: %URL:~20,36%
	echo %URL:~20,36% >>ID-list.txt
)
exit /b







