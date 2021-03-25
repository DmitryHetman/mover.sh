#!/bin/bash
ls -d */ | awk '{ print length($0) " " $0;}'|sort -r -n |cut -d ' ' -f 2- | while read dir
do
mv -v "${dir%/}"*.gp* "${dir}"
done
