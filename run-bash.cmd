@echo off
:: Windows Bash Starter
:: https://github.com/skrysmanski/windows-bash-starter

:: Bash script to execute
set TARGET_SCRIPT=run-bash.sh

::
:: Magic below.
::

:: Check if bash is available on the path.
where /Q bash
if %ERRORLEVEL% EQU 0 (
    for /f %%i in ('where bash') do set BASH_PATH=%%i
    goto RUN_BASH
)

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

:RUN_BASH

:: Make working dir changes local to this script.
setlocal
:: Cd to the script directory
cd %~dp0

:: Important: Don't use "-i" or "Ctrl+C" may not work (e.g. to 
:: cancel SSH password prompts).
"%GIT_INSTALL_ROOT%\bin\bash.exe" "%TARGET_SCRIPT%" %*
