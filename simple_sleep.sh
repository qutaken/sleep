#!/bin/bash
i=1
while [ i>0 ]; do
	sleep 1
	i=$((i+1))
	echo "run  "  "$((((i/86400))/365)) Year " "$((((i/86400))%365)) Day and" " $((((i/3600))%24))hour ," " $((((i/60))%60)) minute, "  "$((i%60)) second" > timePassBy.txt
done 
echo "we done "  >>   timePassBy.txt
