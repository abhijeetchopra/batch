::Auth: Abhijeet Chopra 
::Date: Feb 28, 2017
::Prog: generateListFromFiles.bat
::Desc: Batch script to write dir file list to text file

@echo off
setlocal

:PROMPT
echo This program will generate list of files in current directory.
SET /P req=Do you wish to proceed? (Y/[N])?
IF /I "%req%" NEQ "Y" GOTO END

dir *.docx /b > !FileList.txt
start notepad !FileList.txt

:END
endlocal
