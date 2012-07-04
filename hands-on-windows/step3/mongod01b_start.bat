@echo off
if not defined MONGODB_HOME (
call ..\setEnv.bat
)

if not exist .\data\mongod01b (
mkdir .\data\mongod01b
)

rem run mongod
echo MONGODB_HOME=%MONGODB_HOME%

%MONGODB_HOME%\bin\mongod.exe --dbpath .\data\mongod01b --port 27102 --replSet r1 --oplogSize 10 --logpath .\data\mongod01b\mongod.log --logappend --smallfiles --rest 
