#!/usr/bin/env bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Source each configuration in the .bashrc.d directory.
if [[ -d ${HOME}/.bashrc.d ]]; then
  for FILE in ${HOME}/.bashrc.d/* ; do
    test -f "${FILE}" || continue
    source "${FILE}"
  done
fi

#export FLUO_HOME=${HOME}/src/fluo-uno
#export HADOOP_HOME=${FLUO_HOME}/install/hadoop-3.2.0
#export ZOOKEEPER_HOME=${FLUO_HOME}/install/zookeeper-3.4.14
#export ACCUMULO_VERSION="2.0.0-SNAPSHOT"
#export ACCUMULO_HOME=${FLUO_HOME}/install/accumulo-${ACCUMULO_VERSION}
#pushd "${FLUO_HOME}" > /dev/null
#eval "$( ./bin/uno env )"
#popd > /dev/null

export DW_SOURCE=${HOME}/src/datawave

source ${DW_SOURCE}/contrib/datawave-quickstart/bin/env.sh
