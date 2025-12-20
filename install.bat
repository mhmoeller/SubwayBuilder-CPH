@echo off
title Install Map Pack
echo Starting installation with Node.js(mhmoeller installer)...
node install.js
if %errorlevel% neq 0 (
    echo.
    echo An error occurred. Do you have Node.js installed?
    pause
) else (
    echo.
    echo Press any key to close...
    pause
)