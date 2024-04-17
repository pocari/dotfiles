#!/bin/bash

test -d ./startuptime_bench && rm -rf ./startuptime_bench
mkdir -p ./startuptime_bench
cd ./startuptime_bench

total=108
for i in $(seq 1 $total)
do
  ~/usr/local/bin/nvim \
  -u ~/.config/nvim/init.vim \
  -i NONE \
  --startuptime vim-startup-$$_$i.log \
  -c quit

  printf "\r%*d / %d" ${#total} $i $total
done
echo

for file in vim-startup-*.log
do
    cat "$file" | tail -n 2 | head -1
done \
    | awk '
NR == 1{
    max = $1
    min = $1
}
{
    sum += $1
    if ($1 > max) max = $1
    if ($1 < min) min = $1
}
END {
    if (NR == 0) exit
    print "max: ", max
    print "min: ", min
    print "ave: ", sum / NR
}'
