#!/bin/bash
# This script will setup all the game names, folder names, and add
# connections to the specific game repos as submodules.  Make sure
# you fork the repo and then fill in all the variables below before
# runnig this script.

# Set these variables
Game1Name="Space Cadet Lab Rat"
Game1Folder="space_cadet"
Game1Repo="https://github.com/UWStout/space-cadet-lab-rat.git"

Game2Name="Edge of the Map"
Game2Folder="edge_of_the_map"
Game2Repo="https://github.com/UWStout/edge-of-the-map.git"

Game3Name="BOTANICA"
Game3Folder="botanica"
Game3Repo="https://github.com/UWStout/botanica.git"

Game4Name="SeasonƧ"
Game4Folder="seasons"
Game4Repo="https://github.com/UWStout/seasons.git"

Game5Name="BlackOut"
Game5Folder="blackout"
Game5Repo="https://github.com/UWStout/blackout.git"

# Setup 'play' folder to track game1's repo
if [ -d "./space_cadet/play" ]; then
  rm -rf ./space_cadet/play
fi
mkdir ./space_cadet/play
git submodule add "${Game1Repo}" ./space_cadet/play

# # Update game 1 details
# sed -i -e "s/Game1/${Game1Name}/g" ./semesterData.js
# sed -i -e "s/game1/${Game1Folder}/g" ./semesterData.js
# rm ./semesterData.js-e

# sed -i -e "s/GameName/${Game1Name}/g" ./game1/gameData.js
# sed -i -e "s/folderName/${Game1Folder}/g" ./game1/gameData.js
# rm ./game1/gameData.js-e

# mv game1 "${Game1Folder}"

# Setup 'play' folder to track game2's repo
if [ -d "./edge_of_the_map/play" ]; then
  rm -rf ./edge_of_the_map/play
fi
mkdir ./edge_of_the_map/play
git submodule add "${Game2Repo}" ./edge_of_the_map/play

# Update game 2 details
# sed -i -e "s/Game2/${Game2Name}/g" ./semesterData.js
# sed -i -e "s/game2/${Game2Folder}/g" ./semesterData.js
# rm ./semesterData.js-e

# sed -i -e "s/GameName/${Game2Name}/g" ./game2/gameData.js
# sed -i -e "s/folderName/${Game2Folder}/g" ./game2/gameData.js
# rm ./game2/gameData.js-e

# mv game2 "${Game2Folder}"

# Setup 'play' folder to track game3's repo
if [ -d "./botanica/play" ]; then
  rm -rf ./botanica/play
fi
mkdir ./botanica/play
git submodule add "${Game3Repo}" ./botanica/play

# Update game 3 details
# sed -i -e "s/Game3/${Game3Name}/g" ./semesterData.js
# sed -i -e "s/game3/${Game3Folder}/g" ./semesterData.js
# rm ./semesterData.js-e

# sed -i -e "s/GameName/${Game3Name}/g" ./game3/gameData.js
# sed -i -e "s/folderName/${Game3Folder}/g" ./game3/gameData.js
# rm ./game3/gameData.js-e

# mv game3 "${Game3Folder}"

# Setup 'play' folder to track game4's repo
if [ -d "./seasons/play" ]; then
  rm -rf ./seasons/play
fi
mkdir ./seasons/play
git submodule add "${Game4Repo}" ./seasons/play

# Update game 4 details
# sed -i -e "s/Game4/${Game4Name}/g" ./semesterData.js
# sed -i -e "s/game4/${Game4Folder}/g" ./semesterData.js
# rm ./semesterData.js-e

# sed -i -e "s/GameName/${Game4Name}/g" ./game4/gameData.js
# sed -i -e "s/folderName/${Game4Folder}/g" ./game4/gameData.js
# rm ./game4/gameData.js-e

# mv game4 "${Game4Folder}"

# Setup 'play' folder to track game5's repo
if [ -d "./blackout/play" ]; then
  rm -rf ./blackout/play
fi
mkdir ./blackout/play
git submodule add "${Game5Repo}" ./blackout/play

# Update game 5 details
# sed -i -e "s/Game5/${Game5Name}/g" ./semesterData.js
# sed -i -e "s/game5/${Game5Folder}/g" ./semesterData.js
# rm ./semesterData.js-e

# sed -i -e "s/GameName/${Game5Name}/g" ./game5/gameData.js
# sed -i -e "s/folderName/${Game5Folder}/g" ./game5/gameData.js
# rm ./game5/gameData.js-e

# mv game5 "${Game5Folder}"
