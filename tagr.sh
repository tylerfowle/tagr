#!/bin/sh
# tagr
################################################
VERSION=0.1.0

IFS=$'\n'

INDEX_FILE=~/.tagr/.tagr
INDEX=~/.tagr/.index
INDEX_DIR=$(dirname $INDEX_FILE)
INDEXING_DIR=~/

function init() {
  # create directory
  mkdir -p "$INDEX_DIR"

  # create file
  touch $INDEX_FILE
}



function index() {
  # clear file
  # echo "" > $INDEX_FILE

  # reindex
  for i in $( tag -RNtg ); do
    for j in $( tag -f "$i" ); do
      echo "$i=$j" >> $INDEX_FILE
    done
  done
}


function dedupe() {
  sort $INDEX_FILE | uniq > $INDEX_DIR
}


function echo_lines() {
  file=~/.tagr/.index
  while read l; do
    echo $l
  done
}


# Determining Which Method To Call Based On Command Line Arguments
case $whichMethod in
  index          ) index;;
  * )
    echo ' ERROR: invalid command '
   ;;
esac
