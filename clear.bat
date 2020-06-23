for /f "delims=" %%f in ('dir /b %cd%\data\') do ( 
rmdir /s /q %cd%\data\%%f
)