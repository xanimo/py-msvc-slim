#!/usr/bin/bash

url=`git config --get remote.origin.url`
re="^(https|git)(:\/\/|@)([^\/:]+)[\/:]([^\/:]+)\/(.+)(.git)*$"
if [[ $url =~ $re ]]; then
    user=${BASH_REMATCH[4]}
    repo=${BASH_REMATCH[5]}
    branch=$(git branch --show-current)
fi

docker build -t $user/$repo:$branch \
    -f Dockerfile .
