::Auth: Abhijeet Chopra 
::Date: Feb 28,2017
::Prog: !FileListGenerator.bat
::Desc: Batch file to write dir file list to text file

@echo off
setlocal

:PROMPT
echo This program will generate file from list.txt.
SET /P req=Do you wish to proceed? (Y/[N])?
IF /I "%req%" NEQ "Y" GOTO END


for /f "tokens=*" %%a in (list.txt) do (
  if not exist "%%a" mkdir "%%a"
  echo This is line 1 of text>"%%a\%%a.txt"
)

:END
endlocal
