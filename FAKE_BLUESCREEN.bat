@echo off
:: ==========================================
:: FAKE BLUESCREEN (for prank purposes)
:: Author: 너
:: ==========================================

:: 창 크기 & 배경색 설정
mode con: cols=80 lines=25
color 1F
cls

:: 전체화면 안내
echo.
echo ==========================================================
echo     Press F11 for fullscreen mode (for maximum effect!)
echo ==========================================================
timeout /t 3 >nul

:: 초기 메시지 출력
cls
echo.
echo      :(
echo.
echo      Your PC ran into a problem and needs to restart.
echo      We're just collecting some error info, and then we'll restart for you.
echo.
echo      For more information about this issue and possible fixes, visit
echo      https://www.windows.com/stopcode
echo.
echo      If you call a support person, give them this info:
echo      Stop code: FAKE_CRASH
echo.
echo      0%% complete
echo.

:: 지연을 더 늘려서 긴장감 주기
setlocal enabledelayedexpansion
for /l %%i in (1,1,100) do (
    cls
    echo.
    echo      :(
    echo.
    echo      Your PC ran into a problem and needs to restart.
    echo      We're just collecting some error info, and then we'll restart for you.
    echo.
    echo      For more information about this issue and possible fixes, visit
    echo      https://www.windows.com/stopcode
    echo.
    echo      If you call a support person, give them this info:
    echo      Stop code: FAKE_CRASH
    echo.
    echo      %%i%% complete
    echo.
    timeout /nobreak /t 1 >nul
)

:: 종료 방지
echo.
echo Done. Press any key to exit.
pause >nul
exit
