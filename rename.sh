#! /bin/bash

FILES=(*."$1")

for file in "${FILES[@]}"; do
  new_file=$(echo "$file" | sed s/"$1"/"$2"/g)
  mv "$file" "$new_file"
done
