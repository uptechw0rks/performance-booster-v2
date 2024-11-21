@echo off
cls
color 0A
title pc performance booster

:: Display the "Welcome to Performance Booster v2.0" message
echo *****************************************************
echo *         welcome to performance booster v2.0       *
echo *      - speed up your pc with one click! -        *
echo *****************************************************
echo.
echo                     made by uptechworks
echo.
echo *****************************************************
echo.
echo please wait, loading the menu...
timeout /t 3 >nul  :: Wait for 3 seconds to show the message

:: Instructions for usage
cls
color 0A
echo ===================== instructions ====================
echo welcome to the pc performance booster tool.
echo this tool helps to improve your pc's performance by performing the following:
echo 1. disabling unnecessary services
echo 2. cleaning up temporary files
echo 3. adjusting visual effects for performance
echo 4. and more!
echo 
echo for each option, you will receive a description of what the action will do to your system.
echo you will then be prompted to confirm whether you'd like to continue with the action.
echo please choose one of the options below to get started!
echo =======================================================
timeout /t 5 >nul

:MENU
cls
color 0A
echo ===================== main menu ====================
echo 1. disable unnecessary services and tasks
echo 2. set power plan to high performance
echo 3. clean up temporary files
echo 4. adjust visual effects for performance
echo 5. optimize windows defender (disable real-time monitoring)
echo 6. optimize startup programs
echo 7. check for windows updates
echo 8. clear system logs
echo 9. check disk for errors
echo 10. display system information
echo 11. disable windows animations
echo 12. clean up browser cache (chrome, firefox, edge)
echo 13. disable windows indexing
echo 14. flush dns cache
echo 15. clear system restore points
echo 16. clean up ram
echo 17. show advanced task manager
echo 18. disable transparency effects
echo 19. optimize hard drive (defrag)
echo 20. clear temporary system files
echo 21. disable cortana
echo 22. turn off background apps
echo 23. enable game mode
echo 24. disable startup programs
echo 25. disable windows tips
echo 26. adjust visual effects for best performance
echo 27. run all optimizations (recommended for speed)
echo 28. exit
echo.
set /p choice=select an option (1-28): 

if "%choice%"=="1" goto DISABLE_SERVICES
if "%choice%"=="2" goto POWER_PLAN
if "%choice%"=="3" goto CLEAN_TEMP
if "%choice%"=="4" goto ADJUST_VFX
if "%choice%"=="5" goto OPTIMIZE_DEFENDER
if "%choice%"=="6" goto OPTIMIZE_STARTUP
if "%choice%"=="7" goto CHECK_UPDATES
if "%choice%"=="8" goto CLEAR_LOGS
if "%choice%"=="9" goto CHECK_DISK
if "%choice%"=="10" goto SYSTEM_INFO
if "%choice%"=="11" goto DISABLE_ANIMATIONS
if "%choice%"=="12" goto CLEAN_BROWSER_CACHE
if "%choice%"=="13" goto DISABLE_INDEXING
if "%choice%"=="14" goto FLUSH_DNS
if "%choice%"=="15" goto CLEAR_RESTORE
if "%choice%"=="16" goto CLEAN_RAM
if "%choice%"=="17" goto ADVANCED_TASK_MANAGER
if "%choice%"=="18" goto DISABLE_TRANSPARENCY
if "%choice%"=="19" goto OPTIMIZE_DRIVE
if "%choice%"=="20" goto CLEAN_TEMP_FILES
if "%choice%"=="21" goto DISABLE_CORTANA
if "%choice%"=="22" goto TURN_OFF_APPS
if "%choice%"=="23" goto ENABLE_GAME_MODE
if "%choice%"=="24" goto DISABLE_STARTUP
if "%choice%"=="25" goto DISABLE_TIPS
if "%choice%"=="26" goto BEST_PERFORMANCE
if "%choice%"=="27" goto RUN_ALL
if "%choice%"=="28" exit

goto MENU

:: Run All Optimizations
:RUN_ALL
cls
color 0A
echo *** running all optimizations ***
echo.
echo this will run all of the optimizations available in this tool to maximize performance.
echo it is recommended to run this option if you want the best performance boost.
echo.
set /p continue=do you wish to continue? (y/n): 
if /i "%continue%"=="y" (
    call DISABLE_SERVICES
    call POWER_PLAN
    call CLEAN_TEMP
    call ADJUST_VFX
    call OPTIMIZE_DEFENDER
    call OPTIMIZE_STARTUP
    call CHECK_UPDATES
    call CLEAR_LOGS
    call CHECK_DISK
    call SYSTEM_INFO
    call DISABLE_ANIMATIONS
    call CLEAN_BROWSER_CACHE
    call DISABLE_INDEXING
    call FLUSH_DNS
    call CLEAR_RESTORE
    call CLEAN_RAM
    call ADVANCED_TASK_MANAGER
    call DISABLE_TRANSPARENCY
    call OPTIMIZE_DRIVE
    call CLEAN_TEMP_FILES
    call DISABLE_CORTANA
    call TURN_OFF_APPS
    call ENABLE_GAME_MODE
    call DISABLE_STARTUP
    call DISABLE_TIPS
    call BEST_PERFORMANCE
) else (
    echo action canceled.
)
pause
goto MENU

:: Display System Information
:SYSTEM_INFO
cls
color 0A
echo *** displaying system information ***
echo.
echo this will display your system's current configuration including os, ram, cpu, and more.
echo.
systeminfo
pause
goto MENU

:: Disable unnecessary services
:DISABLE_SERVICES
cls
color 0C
echo *** disabling unnecessary services ***
echo.
echo this will disable non-essential services and tasks to free up system resources.
echo.
set /p continue=do you wish to continue? (y/n): 
if /i "%continue%"=="y" (
    net stop "windows search"
    net stop "superfetch"
    echo unnecessary services disabled.
) else (
    echo action canceled.
)
pause
goto MENU

:: Clean up RAM
:CLEAN_RAM
cls
color 0A
echo *** cleaning up ram ***
echo.
echo this will flush the memory cache to free up ram that may be unused but still held by the system.
echo it can help speed up performance when the system is running low on memory.
echo.
set /p continue=do you wish to continue? (y/n): 
if /i "%continue%"=="y" (
    rundll32.exe advapi32.dll,ProcessIdleTasks
    echo ram cleaned.
) else (
    echo action canceled.
)
pause
goto MENU