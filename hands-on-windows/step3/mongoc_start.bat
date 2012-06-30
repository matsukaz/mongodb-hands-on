@echo off
if not defined MONGODB_HOME (
call ..\setEnv.bat
)

if not exist .\data\mongoc (
mkdir .\data\mongoc
)

%MONGODB_HOME%/bin/mongod --dbpath .\data\mongoc --port 27001 --configsvr --logpath .\data\mongoc\mongoc.log --logappend --smallfiles
