#! /bin/bash

 declare -a repoArrays=("https://github.com/koladev32/react-test-driven-development.git" "https://github.com/koladev32/react-user-dashboard-project.git")

 for repo in "${repoArrays[@]}"; do
   echo "Cloning $repo"
   git clone $repo
   cd $(basename $repo .git)
    echo "Installing dependencies"
    yarn install
    echo "Building"
    yarn build
    cd ..
 done 