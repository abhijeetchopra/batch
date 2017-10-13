::Auth: Abhijeet Chopra 
::Date: Oct 13, 2017
::Prog: makeCopies.bat
::Desc: Batch script makes copies of "template.txt" with filenames as each new line in "list.txt"

@echo off
setlocal

:PROMPT
echo Batch script makes copies of "template.txt" with names in "list.txt".
SET /P req=Do you wish to proceed? (Y/[N])?
IF /I "%req%" NEQ "Y" GOTO END

for /f "tokens=*" %%a in (list.txt) do copy "template.txt" "%%a.txt"

pause

:END
endlocal
