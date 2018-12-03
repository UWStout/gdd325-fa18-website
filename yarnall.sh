#!/bin/bash
for file in */ ; do
  if [[ -d "${file}/play" && ! -L "$file" ]]; then
    cd "${file}/play"
    rm package-lock.json
    npm update uglifyjs-webpack-plugin
    yarn
    npm run sfx
    npm run deploy
    cd ../..
  fi
done
