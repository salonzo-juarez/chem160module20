#!/bin/bash
if [ ! -f pi.y ]; then
echo "No pi.py"
exit 1
elif [ $# -eq 0 ]; then
echo "No trials"
else
for nt in $*; do
	mkdir $nt
	cd $nt
	for i in {1..10}; do
		../pi.py $int >> pi.out
	done
	cd ..
done
fi
