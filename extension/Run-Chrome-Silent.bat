@echo off
:: ========================================================
:: Flow Prompt Automator - Silent Mode Launcher for Chrome
:: Automatically launches Google Chrome without the
:: "started debugging this browser" warning bar.
:: ========================================================

set "CHROME="
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"

if defined CHROME (
    start "" "%CHROME%" --silent-debugger-extension-api
) else (
    start "" "chrome.exe" --silent-debugger-extension-api
)
