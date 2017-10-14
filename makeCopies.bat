::Auth: Abhijeet Chopra 
::Date: Oct 13, 2017
::Prog: makeCopies.bat
::Desc: Batch script makes copies of "template.txt" with filenames as each new line in "list.txt"

@echo off
setlocal

echo ------------------------------------------------------------
echo Auth : Abhijeet Chopra (http://github.com/abhijeetchopra)
echo Date : Oct 13, 2017
echo Prog : makeCopies.bat
echo Desc : Batch script makes copies of "template.txt" with
echo          names in "list.txt"
echo ------------------------------------------------------------
echo(  

:PROMPT
echo WARNING! Running this Batch script will makes copies of 
echo   "template.txt" with names in "list.txt".

echo( 

SET /P req=Do you wish to proceed? (Y/[N])?
IF /I "%req%" NEQ "Y" GOTO END

for /f "tokens=*" %%a in (list.txt) do copy "template.txt" "%%a.txt"

pause

:END
endlocal
