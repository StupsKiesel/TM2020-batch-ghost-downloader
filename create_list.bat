@echo off

for /F "tokens=*" %%A in (tmio-code.txt) do (
	rem echo raw line to temp.txt
	echo %%A > temp.txt
	
	
	rem timeout 1 >nul 2>&1
	rem send raw line to new_1.bat answer lands in temp2.txt (shortend to content of "href=")
	call filter.bat temp.txt
	
	
	

)


pause