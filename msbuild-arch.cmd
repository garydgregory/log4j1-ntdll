@echo === BUILDING ARCH %1 ===
setlocal
mkdir target
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" %1
call ant -f src/main/ntdll/build.xml -Dclasses.dir=target/classes clean msbuild
copy /Y src\main\ntdll\target\NTEventLogAppender.dll target\NTEventLogAppender.%1.dll 
endlocal
