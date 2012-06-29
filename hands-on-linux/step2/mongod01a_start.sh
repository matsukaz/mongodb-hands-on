#!/bin/bash

# set ${MONGODB_HOME} using env file
source ../env.sh


# set ${MONGODB_HOME} if not already set
[ -z "$MONGODB_HOME" ] && MONGODB_HOME=`cd $(dirname $0)/../../ >/dev/null; pwd`


# create data directory if not created
if [ ! -d ./data/mongod01a ]; then
   mkdir -p ./data/mongod01a 
fi

# run mongod
echo MONGODB_HOME=${MONGODB_HOME}

${MONGODB_HOME}/bin/mongod --dbpath ./data/mongod01a --port 27101 --replSet r1 --logpath ./data/mongod01a/mongod.log --logappend --fork --smallfiles

