#!/bin/bash

echo "Same files:"
./comparator1.sh ./tests/test0.txt ./tests/test0.txt -v
echo "Files with the same number sequences:"
./comparator1.sh ./tests/test0.txt ./tests/test1_same_numbers_add_text.txt -v
echo "Some numbers are at the start of the line"
./comparator1.sh ./tests/test0.txt ./tests/test2_nums_start_line.txt -v
echo "Some numbers are at the end of the line"
./comparator1.sh ./tests/test0.txt ./tests/test3_nums_end_line.txt -v
echo "Numbers w/ dots are not included"
./comparator1.sh ./tests/test0.txt ./tests/test4_nums_w_dot.txt -v
echo "Files with different number sequences:"
./comparator1.sh ./tests/test0.txt ./tests/test5_diff_num.txt -v
echo "One file is empty:"
./comparator1.sh ./tests/test0.txt ./tests/test6_nothing.txt -v
echo "One file does not have numbers:"
./comparator1.sh ./tests/test0.txt ./tests/test7_no_nums.txt -v
