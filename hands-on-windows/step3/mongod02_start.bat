@echo off
if not defined MONGODB_HOME (
call ..\setEnv.bat
)

if not exist .\data\mongod02 (
mkdir .\data\mongod02
)

echo MONGODB_HOME=%MONGODB_HOME%

%MONGODB_HOME%\bin\mongod.exe --dbpath .\data\mongod02 --port 27201 --logpath .\data\mongod02\mongod.log --logappend --smallfiles --rest 
