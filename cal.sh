#!/bin/bash
# (calculater.script) cal.sh
# 2020111395 Kim HyeonJi

echo "project management in github"

PS3="select menu: "

declare -a numbers

read numbers[0] < num1.txt
echo "...read num1.txt..."

read numbers[1] < num2.txt
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
	add) let result=${numbers[0]}+${numbers[1]} ;;
	sub) let result=${numbers[0]}-${numbers[1]} ;;
	div) let result=${numbers[0]}/${numbers[1]} ;;
	mul) let result=${numbers[0]}*${numbers[1]} ;;
esac

echo
echo "num1 : ${numbers[0]}"
echo "num2 : ${numbers[1]}"
echo "op : $1"
echo "result : $result"

