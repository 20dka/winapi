REM building with mingw for LfW
set LUA_DIR=C:\lua\5.4
set CFLAGS=-Os -DPSAPI_VERSION=1  -I"%LUA_DIR%\include"
gcc -c %CFLAGS% winapi.c
gcc -c %CFLAGS% wutils.c
gcc -Wl,-s -shared winapi.o wutils.o -L"%LUA_DIR%/bin"  -lpsapi -lMpr C:\lua\5.4\bin\lua54.dll -o winapi.dll