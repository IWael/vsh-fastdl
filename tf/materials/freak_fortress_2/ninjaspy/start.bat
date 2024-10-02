@echo off
setlocal enabledelayedexpansion

REM Change this to the path of your 7-Zip installation
set "sevenZipPath=C:\Program Files\7-Zip\7z.exe"
REM Change this to the path of the folder containing your files
set "folderPath=C:\path\to\your\folder"

cd /d "%folderPath%"

for %%F in (*) do (
    if exist "%%F" (
        if /i not "%%F"=="start.bat" (
            "!sevenZipPath!" a -tbzip2 -mx=9 "%%F.bz2" "%%F"
        )
    )
)

echo Compression complete!
pause
