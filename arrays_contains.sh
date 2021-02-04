#!/bin/bash

in_array() {
  array=("$@")
  value=${array[${#array[@]} - 1]}
  len=$((${#array[@]} - 1))
  is_in_array="false"
  for ((i = 0; i < $len; i++)); do
    if [[ "${array[$i]}" == *"$value"* ]]; then
      is_in_array="true"
      break
    fi
  done
  echo $is_in_array
}

input_array=(word 'two words' words)
r=$(in_array "${input_array[@]}" "$1")

echo "$r"
