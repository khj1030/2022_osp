#!/bin/bash
# (main script) myprog.sh
# 2020111395 Kim HyeonJi

PS3="select menu: "

mkdir temp
echo "...create temp directory..."

cp num1.txt num2.txt cal.sh temp
echo "...copy files to temp directory..."

select menu in add sub div mul
do
	echo "...$menu selected..."
	break
done

echo "...run cal.sh shell script..."
echo

./cal.sh $menu
