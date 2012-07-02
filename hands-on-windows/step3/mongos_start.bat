@echo off
if not defined MONGODB_HOME (
call ..\setEnv.bat
)

if not exist .\data\mongos (
mkdir .\data\mongos
)

echo MONGODB_HOME=%MONGODB_HOME%

%MONGODB_HOME%/bin/mongos.exe --port 27017 --configdb localhost:27001 --chunkSize 1 --logpath ./data/mongos/mongos.log --logappend