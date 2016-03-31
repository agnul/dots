#!/bin/bash

SRC="/home/agnul/tmp/crap"
DEST_BASE="/home/agnul/trash"

for S in $SRC ; 
do
  DEST=$DEST_BASE/$(basename $S)

  while read F
  do

    DIR=$(dirname "$F"); DIR=${DIR#$S}
    if [[ ! -d $DIR ]]
    then 
      echo mkdir -p \"${DEST}${DIR}\"
    fi
    
    echo mv \"$F\" \"${DEST}${DIR}\"
      
  done < <(find $S -type f -mtime +15 | sort)

  find $S -type d -empty -exec echo rmdir {} \;
  
done;
