#!/bin/bash
for file in */ ; do
  if [[ -d "${file}/play" && ! -L "$file" ]]; then
    git submodule update --depth 1 -- "${file}/play"
  fi
done
