#!/bin/bash
# (Reference) Nikkei Linux 2009.4
# How to use
# $chmod 755 findstr.sh
# $./findstr.sh 'Keyword' directory_name
# When forgetting the name of a file, we can use this shell script to find the file with a keyword(not the file name) in the file


dir="$2"
[ -z "$dir" ] && dir=". "
[ -z "$1" ] && exit 1

for filename in `find "$dir"` ;do
  if ! expr "$filename" : '/dev' > /dev/null && ! expr "$filename" : '/proc' > /dev/null ;then
  str=`grep -n "$1" $filename`
  if [ $? -eq 0 ] ;then
    echo "File: $filename"
    echo "$str"
    echo "----"
  fi
  fi
done
