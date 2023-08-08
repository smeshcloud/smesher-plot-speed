@echo off

:init
  SET "PostDir=."
  SET "SendReport=no"

:parse
  if "%~1"=="" GOTO :validate

  if /i "%~1"=="--send-report"  SET "SendReport=yes" & shift & goto :parse
  if /i "%~1"=="--post-dir"     SET "PostDir=$~2"    & shift & shift & goto :parse

:loop
cls
python smesher-plot-speed.py .
ping -n 5 localhost >nul
goto loop
