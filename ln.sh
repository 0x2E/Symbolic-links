#!/bin/bash
lists="./list.txt"
output='./links/'

for item in `cat ${lists}`
do
	if [ ${#item} != 0 ]
	then
		echo ${item}
		ln -s ${item} ${output}${item##*\/}
	else
		continue
	fi
done
echo "Done"
