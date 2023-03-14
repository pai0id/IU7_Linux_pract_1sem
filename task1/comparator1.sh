#!/bin/bash

file1=$1
file2=$2
verb=$3


if [ -z "$file1" ] || [ -z "$file2" ] || [ ! -f "$file1" ] || [ ! -f "$file2"  ]; then
	if [[ $verb == "-v" ]]; then
		echo "Please enter correct file names"
	fi
	exit 2
elif [ ! -r "$file1" ] || [ ! -r "$file2"  ]; then
	if [[ $verb == "-v" ]]; then
		echo "Permission error"
	fi
	exit 3
fi

nums1=""
nums2=""

while read -r line1; do
	line1=${line1//"."/"a"}
	tmp="$(grep -owE "[-]?[0-9]+" <<< "$line1")"
	if [[ -n $tmp ]]; then
		nums1="$nums1
$tmp"
	fi
done < "$file1"

while read -r line2; do
        line2=${line2//"."/"a"}
        tmp="$(grep -owE "[-]?[0-9]+" <<< "$line2")"
	if [[ -n $tmp ]]; then
                nums2="$nums2
$tmp"
        fi
done < "$file2"

if [[ "$nums1" == "$nums2" ]]; then
	if [[ $verb == "-v" ]]; then
                echo "files match"
        fi
	exit 0
else
	if [[ $verb == "-v" ]]; then
                echo "files do not match"
        fi
	exit 1
fi
