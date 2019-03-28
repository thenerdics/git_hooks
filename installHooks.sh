#!/bin/sh

CHOICE=$1
echo "$COPY"

mkdir -p ./test/


[[ -z $CHOICE ]] && echo "Please choose which hook to install" && read CHOICE


FILENAME=`ls | grep $CHOICE | cut -d " " -f1 `
COPY=`cp $FILENAME ./test/"$FILENAME"`

[[ $CHOICE ]] && $COPY

echo "Files successfully copied to ./test/$FILENAME"
ls ./test