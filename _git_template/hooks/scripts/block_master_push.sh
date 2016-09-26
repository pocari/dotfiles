#!/bin/bash

while read local_ref local_sha1 remote_ref remote_sha1
do
  if [[ "${remote_ref##refs/heads/}" = "master" ]]; then
    echo "*ERROR*: Do not push to master branch!!!"
    exit 1
  fi
done
