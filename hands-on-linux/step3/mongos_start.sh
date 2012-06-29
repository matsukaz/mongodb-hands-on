#!/bin/bash

# set ${MONGODB_HOME} using env file
source ../env.sh


# set ${MONGODB_HOME} if not already set
[ -z "$MONGODB_HOME" ] && MONGODB_HOME=`cd $(dirname $0)/../../ >/dev/null; pwd`


# create data directory if not created
if [ ! -d ./data/mongos ]; then
   mkdir -p ./data/mongos
fi

# run mongod
echo MONGODB_HOME=${MONGODB_HOME}

${MONGODB_HOME}/bin/mongos --port 27017 --configdb localhost:27001 --chunkSize 1 --logpath ./data/mongos/mongos.log --logappend --fork

