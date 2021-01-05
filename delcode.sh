#!/bin/zsh

WORKSPACE='workspace'

cd ~
cd $WORKSPACE

if [ $1 = "-h" ] ; then
  echo 'Usage:'
  echo 'help            sh delcode.sh -h'
  echo 'delete-project  sh delcode.sh <language> <name>'
elif [ ! -e $1 ] ; then
  echo 'Please choose a valid language :)'
else
  cd $1
fi

echo 'Confirm?'
read CONFIRM

if [ $CONFIRM = "yes" ] ; then
  rm -rf $2
else
  exit
fi

