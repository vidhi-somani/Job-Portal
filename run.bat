@echo off
echo Starting Job Portal...

java -cp bin jobportal.Main

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Make sure Java (JDK) is installed!
)

pause