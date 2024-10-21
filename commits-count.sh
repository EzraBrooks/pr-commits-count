#!/bin/bash
set -eou pipefail

source=$1
target=$2

sourcePath=$(git branch -rl "*/$source" | xargs)
targetPath=$(git branch -rl "*/$target" | xargs)

commitsCount=$(git log --oneline "$sourcePath" \^"$targetPath" | wc -l)

echo "$commitsCount"
