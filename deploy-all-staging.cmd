setlocal
set /p VERSION=<version.txt
set REPO_ID=sonatype.staging
set REPO_URL=https://oss.sonatype.org/service/local/staging/deploy/maven2
call deploy-arch %VERSION% x86       %REPO_ID% %REPO_URL%
call deploy-arch %VERSION% amd64     %REPO_ID% %REPO_URL%
call deploy-arch %VERSION% arm       %REPO_ID% %REPO_URL%
call deploy-arch %VERSION% x86_arm   %REPO_ID% %REPO_URL%
call deploy-arch %VERSION% x86_amd64 %REPO_ID% %REPO_URL%
call deploy-arch %VERSION% amd64_x86 %REPO_ID% %REPO_URL%
call deploy-arch %VERSION% amd64_arm %REPO_ID% %REPO_URL%
endlocal
