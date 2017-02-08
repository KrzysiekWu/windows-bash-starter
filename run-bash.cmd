@echo off
:: Windows Bash Starter
:: https://github.com/skrysmanski/windows-bash-starter

set TARGET_SCRIPT=run-bash.sh

:: If %GIT_INSTALL_ROOT% is not available, try to guess it.
if "%GIT_INSTALL_ROOT%"=="" (
	set GIT_INSTALL_ROOT=%ProgramFiles%\Git
)

if not exist "%GIT_INSTALL_ROOT%\bin\bash.exe" (
	echo ERROR: Git for Windows doesn't seem to be installed.
	echo   You can download it here: https://git-for-windows.github.io/
	echo   Afterwards, reopen this command window.
	exit /B 1
)

:: Make working dir changes local to this script.
setlocal
:: Cd to the script directory
cd %~dp0

:: Important: Don't use "-i" or "Ctrl+C" may not work (e.g. to 
:: cancel SSH password prompts).
"%GIT_INSTALL_ROOT%\bin\bash.exe" "%TARGET_SCRIPT%" %*
