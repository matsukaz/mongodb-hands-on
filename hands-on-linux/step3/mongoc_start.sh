#!/bin/bash

# set ${MONGODB_HOME} using env file
source ../env.sh


# set ${MONGODB_HOME} if not already set
[ -z "$MONGODB_HOME" ] && MONGODB_HOME=`cd $(dirname $0)/../../ >/dev/null; pwd`


# create data directory if not created
if [ ! -d ./data/mongoc ]; then
   mkdir -p ./data/mongoc 
fi

# run mongod
echo MONGODB_HOME=${MONGODB_HOME}

${MONGODB_HOME}/bin/mongod --dbpath ./data/mongoc --port 27001 --configsvr --logpath ./data/mongoc/mongoc.log --logappend --fork --smallfiles

