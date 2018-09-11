#!/bin/bash
filename="extensions.txt"
# for line in $filename; do
#     echo "$line"
# done

for p in $(cat extensions.txt); do
 code --install-extension "$p"
done
