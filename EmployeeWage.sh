echo welcome
echo to daily wage computation
#absent=0 present=1 parttime=2
function getWorkHours()
{
	echo "This employee worked for $Emp hours in this month"
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
		Ehr+=hr
	;;
	2)	hr=8
		((workdays++))
		Ehr+=hr
	;;
	esac
	DailyWage=$((wph*hr))
	daily_data+=($DailyWage)
	totW+=($DailyWage)
	if [ $Emhr -ge 100 ]
	then
		break
	fi
done
