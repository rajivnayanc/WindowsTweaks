@echo off
cls
:OPTIONS

reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v TaskbarAcrylicOpacity /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v ColorPrevalence /t REG_DWORD /d 1 /f
taskkill /f /im explorer.exe && start explorer.exe
echo Taskbar's Transperancy removed successfully
