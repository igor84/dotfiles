#!/usr/bin/bash

echo Looking for latest version...

latest_link=`curl --silent 'https://github.com/gohugoio/hugo/releases' | egrep -o '/gohugoio/.*hugo_extended_.*\.tar\.gz' | head -n 1`

latest_name=`echo $latest_link | egrep -o 'hugo_extended_[^/]+\.tar\.gz'`
hugo_version=`echo $latest_link | egrep -o 'v[^/]+'`

echo Downloading latest version: $hugo_version

curl --silent -L "https://github.com/$latest_link" -O

echo Extracting...

tar -xzf $latest_name hugo

rm $latest_name

echo Downloaded Hugo version $hugo_version