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

source ${HOME}/bin/set-development-env "datawave-quickstart"
