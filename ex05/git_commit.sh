#!/bin/bash

compteur=0

git log --pretty=format:"%H" | while read commit; do
    if ((compteur < 5)); then
        echo $commit
        compteur=$((compteur + 1))
    else
        break
    fi
done
