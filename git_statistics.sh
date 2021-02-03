#! /bin/bash

get_all_author(){
  echo $(git log | grep 'Author:.*$' | awk '{print $NF}' | sort| uniq)
}

print_result(){
    git log --author="$1" --after='2020-01-01 00:00:00' --until='2020-12-31 23:59:59' --pretty=tformat: --numstat | awk '{ add +=$1; subs += $2; loc += $1 - $2 } END { printf "[Hi] '"$author"' add lines: %s, remove lines: %s, total lines: %s\n", add, subs, loc }' -
}

authors=$(get_all_author)

for author in $authors; do
  print_result "$author"
done
