cat nytimes_humanities_tabbed.csv | awk -F '\t' '{if ($2 ~ "Front Page" || $8 ~ "Front Page") print int($1/10)*10,$1}' | sed -E 's/....-//' | sed -E 's/-..T..:..:..Z//' | awk '{print $2}' | sort | uniq -c > artikelen_per_maand.txt 

echo -e "nr month" "\n" "$(cat artikelen_per_maand.txt)" | awk '{print $1 "\t" $2}'