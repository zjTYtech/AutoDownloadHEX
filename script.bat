:ScriptStart
@echo off
mode con cols=50 lines=30
title=ÉÕÂ¼¹Ì¼þ
::set STLINK_CLI="C:/Program Files (x86)/STMicroelectronics/STM32 ST-LINK Utility/ST-LINK Utility/ST-LINK_CLI.exe"
echo  %~dp0
echo ¡¾1¡¿[32m8[0m-6362
echo ¡¾2¡¿[32m16[0m-6362
echo ¡¾3¡¿[32m24[0m-6362
set choice=
set /p choice= ÇëÑ¡ÔñÒªÏÂÔØµÄ¹Ì¼þ:
if "%choice%"=="1" (
    set hexFile="%~dp0IO-link-8-6362.hex" 
    echo ¡¾1¡¿8-6362)
if "%choice%"=="2" (
    set hexFile="%~dp0IO-link-16-6362.hex" 
    echo ¡¾1¡¿16-6362)
if "%choice%"=="3" (
    set hexFile="%~dp0IO-link-24-6362.hex"  
    echo ¡¾1¡¿24-6362)
ST-LINK_CLI.exe -c -OB RDP=0 -P %hexFile% -V "while_programming" -Rst 
echo [33m³ÌÐòÉÕÂ¼Íê³É£¡£¡£¡OK£¡£¡£¡[0m
pause
goto ScriptStart