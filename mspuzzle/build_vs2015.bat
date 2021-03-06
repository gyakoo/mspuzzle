@echo off
echo == Building for VS2015 ==
echo.
set PREMAKECMD=premake5.exe

where %PREMAKECMD% > NUL 2>&1
if %ERRORLEVEL% NEQ 0 (
  echo '%PREMAKECMD%' command does not found.
  echo Make sure you have it in your PATH environment variable or in the current directory.
  echo Download it from: https://premake.github.io/
  goto end
)
premake5 --file=premake5.lua vs2015 


:end

xcopy SDL2\SDL2-2.0.4\lib\x64\*.dll buildvs2015\bin\x64\debug\ /Y
xcopy SDL2\SDL2-2.0.4\lib\x64\*.dll buildvs2015\bin\x64\release\ /Y

xcopy SDL2\SDL2_image-2.0.1\lib\x64\*.dll buildvs2015\bin\x64\debug\ /Y
xcopy SDL2\SDL2_image-2.0.1\lib\x64\*.dll buildvs2015\bin\x64\release\ /Y

xcopy SDL2\SDL2_ttf-2.0.14\lib\x64\*.dll buildvs2015\bin\x64\debug\ /Y
xcopy SDL2\SDL2_ttf-2.0.14\lib\x64\*.dll buildvs2015\bin\x64\release\ /Y

echo.
pause