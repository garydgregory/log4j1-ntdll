@REM ----------------------------------------------------------------------------
@REM Licensed to the Apache Software Foundation (ASF) under one
@REM or more contributor license agreements.  See the NOTICE file
@REM distributed with this work for additional information
@REM regarding copyright ownership.  The ASF licenses this file
@REM to you under the Apache License, Version 2.0 (the
@REM "License"); you may not use this file except in compliance
@REM with the License.  You may obtain a copy of the License at
@REM
@REM    http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing,
@REM software distributed under the License is distributed on an
@REM "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
@REM KIND, either express or implied.  See the License for the
@REM specific language governing permissions and limitations
@REM under the License.
@REM ----------------------------------------------------------------------------
setlocal
set BASE=NTEventLogAppender.%2
set FILE=%BASE%.dll
set PATH=target/%FILE%
set POM2=target\pom-%2.xml
%windir%\system32\WindowsPowerShell\v1.0\powershell -Command "(gc pom.xml) -replace 'log4j1-ntdll', '%BASE%' | Out-File %POM2%"
if exist "%PATH%" call "%MAVEN_HOME%\bin\mvn.cmd" install:install-file ^
  -Dfile=%PATH% ^
  -DgroupId=com.garygregory.log4j1 ^
  -DartifactId=%BASE% ^
  -Dversion=%1 ^
  -Dpackaging=dll ^
  -DpomFile=%POM2%
endlocal
