@echo off
cd /d "%~dp0"
where npm >nul 2>nul
if errorlevel 1 (
  echo Installez Node.js LTS depuis https://nodejs.org/ puis relancez ce fichier.
  pause
  exit /b 1
)
if not exist node_modules\.bin\vite.cmd (
  call npm ci
  if errorlevel 1 (
    echo Installation incomplete. Verifiez votre connexion Internet.
    pause
    exit /b 1
  )
)
call npm run dev -- --open
pause
