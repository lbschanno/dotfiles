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

# Configure fluo-uno development
#export FLUO_HOME="${FLUO_UNO_SRC}"
#export HADOOP_HOME="${FLUO_HOME}/install/hadoop-3.2.0"
#export ZOOKEEPER_HOME="${FLUO_HOME}/install/zookeeper-3.4.14"
#export ACCUMULO_VERSION="2.0.0-SNAPSHOT"
#export ACCUMULO_HOME="${FLUO_HOME}/install/accumulo-           ${ACCUMULO_VERSION}"
#pushd "${FLUO_HOME}" > /dev/null
#eval "$( ./bin/uno env )"
#popd > /dev/null

# Configure DATAWAVE quickstart
export DW_SOURCE="${DATAWAVE_SRC}"
source ${DW_SOURCE}/contrib/datawave-quickstart/bin/env.sh
