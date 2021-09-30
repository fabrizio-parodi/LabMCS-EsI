#!/bin/bash
echo " " > fileInput
for pl in Sun Venus Earth Mars
do
    grep -A6 "// $pl" effemeridi.h | grep -v "// $pl" >> fileInput
    echo " " >> fileInput
done
