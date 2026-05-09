#!/usr/bin/env bash

colors=("red" "blue" "green" "white" "black")

if [[ ${#} -ne 1 ]]; then 
	echo "Error"
	exit 1
	echo ${colors[$1 - 1]}
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
	echo "Error"
	exit 1
fi

index=$(( $1 - 1 ))

if [[ $index -lt 0 || $index -ge ${#colors[@]} ]]; then
	echo "Error"
	exit 1
fi

echo "${colors[$index]}"
