:ScriptStart
@echo off
mode con cols=50 lines=30
title=��¼�̼�
::set STLINK_CLI="C:/Program Files (x86)/STMicroelectronics/STM32 ST-LINK Utility/ST-LINK Utility/ST-LINK_CLI.exe"
echo  %~dp0
echo ��1��[32m8[0m-6362
echo ��2��[32m16[0m-6362
echo ��3��[32m24[0m-6362
set choice=
set /p choice= ��ѡ��Ҫ���صĹ̼�:
if "%choice%"=="1" (
    set hexFile="%~dp0IO-link-8-6362.hex" 
    echo ��1��8-6362)
if "%choice%"=="2" (
    set hexFile="%~dp0IO-link-16-6362.hex" 
    echo ��1��16-6362)
if "%choice%"=="3" (
    set hexFile="%~dp0IO-link-24-6362.hex"  
    echo ��1��24-6362)
ST-LINK_CLI.exe -c -OB RDP=0 -P %hexFile% -V "while_programming" -Rst 
echo [33m������¼��ɣ�����OK������[0m
pause
goto ScriptStart