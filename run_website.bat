@echo off
echo ==========================================
echo Setting up and starting the Birthday Website
echo ==========================================

echo.
echo [Step 1] Installing dependencies (this might take a minute)...
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Error installing dependencies. Please check if Node.js is installed.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [Step 2] Starting the website...
echo.
echo IMPORTANT: once the server starts, open the link (e.g. http://localhost:5173) in your browser.
echo Press SPACE on the website to start the animation!
echo.
call npm run dev

pause
