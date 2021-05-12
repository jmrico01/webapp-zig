@echo off

setlocal

if "%1"=="" call :help
if "%1"=="help" call :help
if "%1"=="build" call :build
if "%1"=="clean" call :clean
if "%1"=="run" call :run
if "%1"=="test" call :test
if "%1"=="setup" call :setup
if "%1"=="release" call :release %2
exit /B %ERRORLEVEL%

:help

echo build.bat takes 1 argument: build/clean/run/test/setup/release

exit /B 0

:build

zig build-lib -target wasm32-freestanding main.zig

exit /B 0

:clean

if exist "zig-cache" (
	rmdir /Q /S zig-cache
)

exit /B 0

:run
echo UNIMPLEMENTED run
exit /B 0

:test
echo UNIMPLEMENTED test
exit /B 0

:setup
echo UNIMPLEMENTED setup
exit /B 1

:release
echo UNIMPLEMENTED release
exit /B 1
