#!/bin/bash

echo "Same file:"
./comparator2.sh ./tests/test0.txt ./tests/test0.txt -v
echo "Text after string is the same:"
./comparator2.sh ./tests/test0.txt ./tests/test1.txt -v
echo "Text after string is different:"
./comparator2.sh ./tests/test0.txt ./tests/test2.txt -v
echo "Second text has two string entries:"
./comparator2.sh ./tests/test0.txt ./tests/test3.txt -v
echo "Second text has no string entries:"
./comparator2.sh ./tests/test0.txt ./tests/test4.txt -v
