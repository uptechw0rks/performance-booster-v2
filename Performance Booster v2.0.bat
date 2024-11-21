@echo off
cls
color 0A
title pc performance booster

:: Display the animated welcome message
:WELCOME_ANIMATION
cls
color 0A
echo *****************************************************
timeout /t 1 >nul
echo *         Welcome to Performance Booster v2.0       *
timeout /t 1 >nul
echo *      - Speed up your PC with one click! -         *
timeout /t 1 >nul
echo *****************************************************
timeout /t 1 >nul
echo.
timeout /t 1 >nul
echo                     Made by uptechworks
timeout /t 1 >nul
echo.
timeout /t 1 >nul
echo *****************************************************
timeout /t 2 >nul
echo.
goto INSTRUCTIONS

:INSTRUCTIONS
cls
color 0A
echo ===================== Instructions ====================
echo Welcome to the PC Performance Booster Tool.
echo This tool helps to improve your PC's performance by performing the following:
echo 1. Disabling unnecessary services
echo 2. Cleaning up temporary files
echo 3. Adjusting visual effects for performance
echo 4. And more!
echo.
echo For each option, you will receive a description of what the action will do to your system.
echo You will then be prompted to confirm whether you'd like to continue with the action.
echo Please choose one of the options below to get started!
echo =======================================================
timeout /t 5 >nul
goto MENU

:MENU
cls
color 0A
echo ===================== Main Menu ====================
echo 1. Disable unnecessary services and tasks
echo 2. Set power plan to high performance
echo 3. Clean up temporary files
echo 4. Adjust visual effects for performance
echo 5. Optimize Windows Defender (disable real-time monitoring)
echo 6. Optimize startup programs
echo 7. Check for Windows updates
echo 8. Clear system logs
echo 9. Check disk for errors
echo 10. Display system information
echo 11. Disable Windows animations
echo 12. Clean up browser cache (Chrome, Firefox, Edge)
echo 13. Disable Windows indexing
echo 14. Flush DNS cache
echo 15. Clear system restore points
echo 16. Clean up RAM
echo 17. Show advanced task manager
echo 18. Disable transparency effects
echo 19. Optimize hard drive (defrag)
echo 20. Clear temporary system files
echo 21. Disable Cortana
echo 22. Turn off background apps
echo 23. Enable Game Mode
echo 24. Disable startup programs
echo 25. Disable Windows tips
echo 26. Adjust visual effects for best performance
echo 27. Run all optimizations (recommended for speed)
echo 28. Exit
echo.
set /p choice=Select an option (1-28): 

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