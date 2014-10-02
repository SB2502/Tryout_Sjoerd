echo "Finding days of May, one moment please..." 

for i in {1850..2015}; do 

year=$i
day=zo
day2=ma
day3=di
day4=wo
day5="do"
day6=vr
day7=za

ncal $year | sed -e 's/ /_/g' | awk -F "_" '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11}' | sed 11q | tail +11 | sed -E 's/'$day2'//' > mei_-$day2-_$year.txt

echo -e "maandag mei $year=" "$(cat mei_-$day2-_$year.txt)" >> total_output2.txt

rm mei_-$day2-_$year.txt

ncal $year | sed -e 's/ /_/g' | awk -F "_" '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11}' | sed 12q | tail +12 | sed -E 's/'$day3'//' > mei_-$day3-_$year.txt

echo -e "dinsdag mei $year=" "$(cat mei_-$day3-_$year.txt)" >> total_output2.txt

rm mei_-$day3-_$year.txt

ncal $year | sed -e 's/ /_/g' | awk -F "_" '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11}' | sed 13q | tail +13 | sed -E 's/'$day4'//' > mei_-$day4-_$year.txt

echo -e "woensdag mei $year=" "$(cat mei_-$day4-_$year.txt)" >> total_output2.txt

rm mei_-$day4-_$year.txt

ncal $year | sed -e 's/ /_/g' | awk -F "_" '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11}' | sed 14q | tail +14 | sed -E 's/'$day5'//' > mei_-$day5-_$year.txt

echo -e "donderdag mei $year=" "$(cat mei_-$day5-_$year.txt)" >> total_output2.txt

rm mei_-$day5-_$year.txt

ncal $year | sed -e 's/ /_/g' | awk -F "_" '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11}' | sed 15q | tail +15 | sed -E 's/'$day6'//' > mei_-$day6-_$year.txt

echo -e "vrijdag mei $year=" "$(cat mei_-$day6-_$year.txt)" >> total_output2.txt

rm mei_-$day6-_$year.txt

ncal $year | sed -e 's/ /_/g' | awk -F "_" '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11}' | sed 16q | tail +16 | sed -E 's/'$day7'//'  > mei_-$day7-_$year.txt

echo -e "zaterdag mei $year=" "$(cat mei_-$day7-_$year.txt)" >> total_output2.txt

rm mei_-$day7-_$year.txt

ncal $year | sed -e 's/ /_/g' | awk -F "_" '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11}' | sed 17q | tail +17 | sed -E 's/'$day'//'  > mei_-$day-_$year.txt

echo -e "zondag mei $year=" "$(cat mei_-$day-_$year.txt)" >> total_output2.txt

rm mei_-$day-_$year.txt

echo -e "$(cat total_output2.txt)" > totaal_mei.txt

done

rm total_output2.txt

echo "Days of May have been uncovered and written into totaal_mei.txt"