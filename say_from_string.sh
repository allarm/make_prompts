#!/bin/bash

filename="$1"
voice="$2"
[ -z $voice ] && voice="Ava"
dest_dir="$3"
[ ! -d $dest_dir ] && mkdir $dest_dir

oldIFS="$IFS"
egrep -v '(^#|^\s*$|^\s*\t*#)' $filename | while read -r line
do
    IFS=';' read -a arr <<< "$line"

    to_say=${arr[0]}
    filename=${arr[1]}
    filename="$(echo -e "${filename}" | tr -d '[[:space:]]')"

    [ -z $filename ] && continue

    echo -e "To say: $to_say"
    echo -e "File: $filename"

    full_file_name="$dest_dir/$filename"
    say --progress -v $voice "$to_say" -o $full_file_name
    sox $full_file_name.aiff -r 8000 -b 8 -c 1 -e u-law "$full_file_name.wav"
done

cd $dest_dir
zip $dest_dir *.wav
cd ..

IFS="$oldIFS"
