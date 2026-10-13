@echo off
setlocal
echo ========================================================
echo        Kricko Desktop - GitHub Release Publisher
echo ========================================================
echo.

where gh >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [ERROR] GitHub CLI (gh) is not installed or not in PATH.
    echo Please install GitHub CLI from: https://cli.github.com/
    echo or manually upload files via GitHub Web UI (Releases section).
    echo.
    pause
    exit /b 1
)

echo Checking GitHub authentication...
gh auth status
if %ERRORLEVEL% neq 0 (
    echo [INFO] Logging in to GitHub...
    gh auth login
)

set VERSION=v0.1.0
echo Creating GitHub Release %VERSION% with release binaries...
gh release create %VERSION% ^
  kricko_0.1.0_x64-setup.exe ^
  kricko-desktop.exe ^
  kricko_0.1.0_x64_en-US.msi ^
  --title "Kricko Desktop %VERSION%" ^
  --notes "Official release of Kricko Desktop for Windows. 100% Private, On-Device AI by Cortiqa."

if %ERRORLEVEL% equ 0 (
    echo.
    echo [SUCCESS] Release published successfully to GitHub!
) else (
    echo.
    echo [FAILED] Failed to publish release. Check error above.
)

pause
