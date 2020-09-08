#! /bin/bash
echo welcome
echo to daily wage computation
#absent=0 present=1 parttime=2
declare -A DailyandTotal
function getWorkHours()
{
	echo "This employee worked for $Ehr hours in this month"
}
totW=0
tothr=0
Ehr=0
workdays=0
for (( day=1;day<=20;day++ ))
do
	attendance=$((RANDOM%3))
	wph=20
	case $attendance in
	0) 	hr=0
	;;
	1)	hr=20
		((workdays++))
		((Ehr+=hr))
	;;
	2)	hr=8
		((workdays++))
		((Ehr+=hr))
	;;
	esac
	DailyWage=$((wph*hr))
	daily_data+=($DailyWage)
	((totW+=DailyWage))
	if [ $Ehr -ge 100 ]
	then
		break
	fi
	DailyandTotal[$day]=$DailyWage
done
for day in ${!DailyandTotal[@]}
do
	echo "Day $day : ${DailyandTotal[$day]}"
done
getWorkHours
echo "Employee earn $totW , this month"
echo "Employee daily data is $daily_data}"
