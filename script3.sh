#use AWK to label all data between tabs as a field
#check the 2nd and 8th field for the term "Front Page"
#if a 'hit' is found, print the 1st field of that
#delete all characters from the time-stamp except for the month-indication
#sort so that the months are 01, 02, 03, etc
#use UNIQ to count how many times each month is named within the time-stamp
#write output to text-file

cat nytimes_humanities_tabbed.csv | awk -F '\t' '{if ($2 ~ "Front Page" || $8 ~ "Front Page") print $1}' | sed -E 's/....-//' | sed -E 's/-..T..:..:..Z//' | sort | uniq -c > artikelen_per_maand.txt 

#use echo to print results with a legenda and AWK to divide them by a TAB so it looks nice. 

echo -e "nr month" "\n" "$(cat artikelen_per_maand.txt)" | awk '{print $1 "\t" $2}'