#!/bin/bash
# (calculater.script) cal.sh
# 2020111395 Kim HyeonJi

PS3="select menu: "

read num1 < num1.txt
echo "...read num1.txt..."

read num2 < num2.txt
echo "...read num2.txt..."

if [ $# -lt 1 ]; then
	echo "...none operator parameter..."
	select menu in add sub div mul
	do
		set $menu
		echo "...$1 selected..."
		break
	done
fi

echo "...run calculater..."
case $1 in
	add) let result=$num1+$num2 ;;
	sub) let result=$num1-$num2 ;;
	div) let result=$num1/$num2 ;;
	mul) let result=$num1*$num2 ;;
esac

echo
echo "num1 : $num1"
echo "num2 : $num2"
echo "op : $1"
echo "result : $result"

