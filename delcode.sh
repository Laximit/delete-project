#!/bin/zsh

WORKSPACE='(your workspace)'

clear
echo 'delete project - language'
echo '************'
echo '-python'
echo '-csharp'
echo '-html'
echo '-shell'
echo '-react'
echo '-reactnative'
echo '-java'
echo '************'
read LANGUAGE

case $LANGUAGE in
  python | csharp | html | shell | react | reactnative | java)
    cd ~
    cd $WORKSPACE/$LANGUAGE
  ;;
  *)
    echo 'Please choose a valid language :)'
    exit
  ;;
esac

clear
echo 'delete project - name'
echo '************'
ls
echo '************'
read NAME

clear
echo 'delete project - confirm'
echo '************'
echo $LANGUAGE '-' $NAME
echo '************'
read CONFIRM

case $CONFIRM in
  yes)
    rm -rf $NAME
  ;;
  *)
    exit
  ;;
esac
