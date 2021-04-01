@echo off
setlocal

set currentPath=%~dp0
set basePath=%currentPath:~0,-1%
set outputPath=%basePath%\nupkg

if not exist "%outputPath%" mkdir "%outputPath%"

nuget.exe push "%outputPath%\ExcelDna.Registration.1.2.5-preview.nupkg" -Source  https://api.nuget.org/v3/index.json -Verbosity detailed -NonInteractive
@if errorlevel 1 goto end

nuget.exe push "%outputPath%\ExcelDna.Registration.FSharp.1.2.5-preview.nupkg" -Source  https://api.nuget.org/v3/index.json -Verbosity detailed -NonInteractive
@if errorlevel 1 goto end

nuget.exe push "%outputPath%\ExcelDna.Registration.VisualBasic.1.2.5-preview.nupkg" -Source  https://api.nuget.org/v3/index.json -Verbosity detailed -NonInteractive
@if errorlevel 1 goto end