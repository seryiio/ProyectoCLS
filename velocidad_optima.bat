@echo off
echo Actualizando Backend desde GitHub...

cd /d "C:\Proyectos\clsproject-backend"
git pull

echo Iniciando Backend...
start /min "Backend" cmd /k "node index.js"

echo Actualizando Frontend desde GitHub...

cd /d "C:\Proyectos\clsproject-frontend"
git pull

echo Iniciando Frontend...
start /min "Frontend" cmd /k "npm run dev"

timeout /t 5 >nul

start "" "http://localhost:5173/"
