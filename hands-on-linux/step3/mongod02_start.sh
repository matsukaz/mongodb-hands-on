#!/bin/bash

# set ${MONGODB_HOME} using env file
source ../env.sh


# set ${MONGODB_HOME} if not already set
[ -z "$MONGODB_HOME" ] && MONGODB_HOME=`cd $(dirname $0)/../../ >/dev/null; pwd`


# create data directory if not created
if [ ! -d ./data/mongod02 ]; then
   mkdir -p ./data/mongod02 
fi

# run mongod
echo MONGODB_HOME=${MONGODB_HOME}

${MONGODB_HOME}/bin/mongod --dbpath ./data/mongod02 --port 27201 --logpath ./data/mongod02/mongod.log --logappend --fork --smallfiles

