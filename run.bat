@echo off
title Rooting For Android Studio VirtualMachine

REM Rooting For Android Studio Virtual Machine
REM Code By Kai_HT
REM Will be updated later
REM Version 1.0
REM Set Encoding Type "ANSI" to save
REM Require Installed Android Studio

REM Set Width length
setlocal enabledelayedexpansion
for /f %%W in ('powershell -Command "(Get-Host).UI.RawUI.WindowSize.Width"') do set "width=%%W"
set "line="
cls
echo.
echo ┌───────────────────────────────────────────────────┒
echo │         Rooting Android Studio AVD Emulator       ┃
echo │               Scripting From Kai_HT               ┃
echo ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo [*] Require Installed Android Studio.
for /l %%i in (1,1,%width%) do set "line=!line!─"
:BRANCH_ROOT01
SET /p andStuInst=[+] Are you AndroidStudio Installed? (Y/N): 

REM Check Input Data.
echo !andStuInst! | findstr /r "^[Y-N]$" >nul
IF %errorlevel% neq 0 (
    echo Input Y OR N
    goto BRANCH_ROOT01
)

IF "%andStuInst%"=="N" (
   echo This Batch Script Require Android Studio Installed.
   exit
   ) ELSE IF "%andStuInst%"=="Y" (
   goto BRANCH_LEVEL01
   ) ELSE (
   echo Unknown Input Data...
   goto BRANCH_ROOT01
)

:BRANCH_LEVEL01
SET /p AVD_Version=Version of AVD Emulator: 
echo [+] Download CVD Rooting Files (Filename: rootAVD)
git clone https://github.com/newbit1/rootAVD.git
echo [+] Now you requre Running AVD.
:BRANCEH_ROOT02
SET /p RunAVD=[*] Are you Running AVD Now? (Y/N): 

REM Check Input Data.
echo !RunAVD! | findstr /r "^[Y-N]$" >nul
IF %errorlevel% neq 0 (
    echo Input Y OR N
    goto BRANCH_ROOT02
)
pause

IF "%RunAVD%"=="N" (
   echo Check your AVD Running
   goto BRANCH_ROOT02
   ) ELSE IF "%RunAVD%"=="Y" (
   goto BRANCH_LEVEL02
   ) ELSE (
   echo Unknown Input Data...
   goto BRANCH_ROOT02
)

:BRANCH_LEVEL02
cd rootAVD
.\rootAVD.bat system-images\android-%AVD_Version%\google_apis_playstore\x86_64\ramdisk.img
echo [+] AVD Emulator Rooting Done.
echo [+] Please Check Magisk in AVD Emulator.
pause
