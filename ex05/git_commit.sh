#!/bin/bash

commits=$(git log --pretty=format:"%H")
compteur=0

for commit in commits; do
    if ((compteur <= 5)); then
        echo $commit
        compteur=$((compteur + 1))
    fi
done
