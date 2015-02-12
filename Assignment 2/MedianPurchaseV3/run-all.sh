#!/usr/bin/env bash

if [ $# != 2 ]
then
	echo "Usage: ./run-all.sh <input> <output>"
	echo "For example: ./run-all.sh input/purchases4.txt output"
	exit 
fi

# Compile & build the source code into jar  
ant

# Run the jar with given inputs on Hadoop
hadoop jar MedianPurchaseV3.jar $1 $2