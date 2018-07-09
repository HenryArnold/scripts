#! /bin/sh
#usage: nohup ./backup.sh &
# backstage do the script
#reconnect: screen ...

function init{
  git init
  git add *
  git commit -m "first commit"
  git remote add origin https://github.com/NetWallow/BackUp.git
  sed 's/https:\/\/github.com\/NetWallow\/BackUp.git/https:\/\/NetWallow:WANGwang137828@github.com\/NetWallow\/BackUp.git/g' ./.git/config > config
  mv config ./.git/config
  git push -u origin master
}

function backup{
  git add *
  git commit -m "backup"
  git push -u origin master
}

backup()
