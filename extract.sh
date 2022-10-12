#!/bin/bash
echo " " > fileInput
for pl in $*
do
    grep -A6 "// $pl" effemeridi.h | grep -v "// $pl" >> fileInput
    echo " " >> fileInput
done
