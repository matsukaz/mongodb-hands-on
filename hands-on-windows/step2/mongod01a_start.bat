@echo off
if not defined MONGODB_HOME (
call ..\setEnv.bat
)

if not exist .\data\mongod01a (
mkdir .\data\mongod01a
)

rem run mongod
echo MONGODB_HOME=%MONGODB_HOME%

%MONGODB_HOME%\bin\mongod.exe --dbpath .\data\mongod01a --port 27101 --replSet r1 --oplogSize 10 --logpath .\data\mongod01a\mongod.log --logappend --smallfiles --rest 
