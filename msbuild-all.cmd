del /Q target\*.*
call msbuild-arch x86
call msbuild-arch amd64
call msbuild-arch arm
call msbuild-arch x86_arm
call msbuild-arch x86_amd64
call msbuild-arch amd64_x86
call msbuild-arch amd64_arm
