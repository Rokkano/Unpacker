@echo off 
setlocal enabledelayedexpansion

REM FPath is current folder, SPath is save path
set FPath=%1
if "%FPath%"=="" (
	set FPath=%cd%
)

set SPath=%2
if "%SPath%"=="" (
	set SPath=%cd%
)

for /f "delims=" %%f in ('dir /b %FPATH%') do ( 
if exist %%f/ (
echo Started  "%FPATH%\script.bat %cd%\%%f\ %SPATH%" >> log.txt
start /wait %FPATH%\script.bat %cd%\%%f\ %SPATH%
) else (
echo Saved "%FPATH%%%f" into "%SPATH%\%%f" >> log.txt
move "%FPATH%%%f" "%SPATH%\%%f"
)
)

exit 0