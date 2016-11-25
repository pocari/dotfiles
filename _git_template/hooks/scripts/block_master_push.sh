#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
while read local_ref local_sha1 remote_ref remote_sha1
do
  if [[ "$FORCE_PUT_MASTER" != "1" && "${remote_ref##refs/heads/}" = "master" ]]; then
    echo -e "${RED}*ERROR*${NC}: Do not push to master branch!!! or execute with '${RED}FORCE_PUT_MASTER=1${NC} git push ...'"
    exit 1
  fi
done
