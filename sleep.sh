 #!bin/bash
 s=1
 m=0
 h=0
d=0
y=0
while [ $s -lt 62 ]; do
  s=$((s+1))
  sleep 0.98
  echo "run " "$y year " "$d day ,and "  "$h hour " "$m minute "  "$s second !." > timePassBy.txt
	if [ $s -eq 60 ]; then
		m=$((m+1))
		s=$((0))
		if [ $m -eq 60 ]; then
			h=$((h+1))
			m=$((0))
			if [ $h -eq 24 ]; then
				d=$((d+1))
				h=$((0))
				if [ $d -eq 365 ]; then
					y=$((y+1))
					d=$((0))
				fi
			fi
		fi
	fi
done
	echo "we done " >> timePassBy.txt
