#!/bin/bash
for file in */ ; do
  if [[ -d "${file}/play" && ! -L "$file" ]]; then
    cd "${file}/play"
    git pull -u origin master
    yarn
    npm run sfx
    npm run deploy
    cd ../..
  fi
done
