@echo off 

REM FPath is current folder, SPath is save path
set Iteration=%1
if "%Iteration%"=="" (
	set Iteration=10
)

for /L %%n in (1,1,%Iteration%) do (
mkdir "%cd%\data\%%n"
echo This is a test >> "%cd%\data\%%n\%%n.txt"
)