@echo off
if not defined MONGODB_HOME (
call ..\setEnv.bat
)

if not exist .\data\mongod01c (
mkdir .\data\mongod01c
)

rem run mongod
echo MONGODB_HOME=%MONGODB_HOME%

%MONGODB_HOME%\bin\mongod.exe --dbpath .\data\mongod01c --port 27103 --replSet r1 --oplogSize 10 --logpath .\data\mongod01c\mongod.log --logappend --smallfiles --rest
