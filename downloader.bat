@echo off

if not exist "%cd%\Ghosts\" mkdir %cd%\Ghosts


echo ####################################################
echo # Batch Downloading Ghost files from "ID-list.txt" #
echo ####################################################

for /F "tokens=*" %%A in (ID-list.txt) do (
echo Downloading: %%A...
bitsadmin.exe /transfer "%%A" https://prod.trackmania.core.nadeo.online/storageObjects/%%A %cd%\Ghosts\%%A >nul 2>&1
)
timeout
echo #####################
echo # Download Finished #
echo #####################
echo ##########################
echo # Fixing file extentions #
echo ##########################
FOR /R "%CD%\Ghosts" %%f IN (*) DO REN "%%f" *.ghost.gbx