@echo off
setlocal

set "computerList=ICX19Reporting"
for %%C in (%computerList%) do (
    dsrm "CN=%%C,CN=Computers,DC=dc,DC=dmn" -noprompt
    echo Removed computer: %%C
)

endlocal
