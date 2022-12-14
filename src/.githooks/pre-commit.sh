#!/bin/bash

PWD=`pwd`
globalEmail=`git config --global --get user.email`
signingKey=`git config --global --get user.signingkey`
workEmail="alaa.dhieb1@gmail.com"

  if [[ $PWD != "*demo*" && $globalEmail != $workEmail ]];
    then
          echo "Commit email and global git config email differ"
          echo "Global commit email: "$globalEmail""
          echo "Committing email expected: $workEmail"
          exit 1
  else
          echo ""
          exit 0
  fi