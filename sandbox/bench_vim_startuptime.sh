#!/bin/bash

mkdir -p ./startuptime_bench
cd ./startuptime_bench

for i in {1..100}
do
    /usr/local/bin/nvim \
	-u ~/.config/nvim/init.vim \
	-i NONE \
        --startuptime dein-vim-$$_$i.log \
        -c quit
done

echo "dein.vim"
for file in dein-vim-*.log
do
    awk 'END {print $1}' "$file"
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
