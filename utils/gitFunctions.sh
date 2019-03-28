#!/bin/bash

CHOICE=$1
DIR='.git/hooks'
mkdir -p $DIR

GENERATE_FILENAME(){ 
    NEW_FILENAME=`ls ./gitHooks | grep -i $CHOICE | cut -d " " -f1`
    echo $NEW_FILENAME
}

COPY(){
    TEMP_FILENAME=`GENERATE_FILENAME`
    cp ./gitHooks/$TEMP_FILENAME $DIR/$TEMP_FILENAME 
}

USER_CHOICE(){
    [[ -z $CHOICE ]] && echo "Please choose which hook to install" && read CHOICE
}

EXECUTE_CHOICE(){
    [[ $CHOICE ]] && COPY
}
 
CONFIRM_EXECUTION(){
    echo "Files successfully copied to $DIR/$TEMP_FILENAME"
    ls $DIR
}