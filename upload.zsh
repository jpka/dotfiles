#!/bin/zsh

local version=$(cat version)
local append=""

if [[ $1 == "-a" ]]
  then append="--amend" 
else
  ((version[-1] += 1))
  echo $version > version
fi

git add . && git commit $append -a -m "Bump to v$version" && git push origin master --force
