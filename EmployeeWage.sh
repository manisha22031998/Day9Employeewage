echo welcome
echo to daily wage computation
#UC1
for (( day=1;day<=20;day++ ))
do
	attendance=$((RANDOM%2))
	if [ $attendance -eq 0 ]
	then
		emp=0
		echo absent
	else
		emp=1
		echo present
	fi
done
#UC2
if [ $emp -eq 1 ]
then
	wph=20
	hr=8
	dailywage=$((wph*hr))
	echo $dailywage
else
	echo Working hr is 0

