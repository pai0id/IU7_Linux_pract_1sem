#!/bin/bash

echo "Same files:"
./comparator4.sh ./tests/test0.txt ./tests/test0.txt -v
echo "Files with the same number sequences:"
./comparator4.sh ./tests/test0.txt ./tests/test1_same_numbers_add_text.txt -v
echo "Some numbers are at the start of the line"
./comparator4.sh ./tests/test0.txt ./tests/test2_nums_start_line.txt -v
echo "Some numbers are at the end of the line"
./comparator4.sh ./tests/test0.txt ./tests/test3_nums_end_line.txt -v
echo "Files with different number sequences:"
./comparator4.sh ./tests/test0.txt ./tests/test4_diff_num.txt -v
echo "One file is empty:"
./comparator4.sh ./tests/test0.txt ./tests/test5_nothing.txt -v
echo "One file does not have numbers:"
./comparator4.sh ./tests/test0.txt ./tests/test6_no_nums.txt -v
