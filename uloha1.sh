#!/bin/bash


echo "Kral" | fold -w1 | nl -w1 -s';' > slovo.txt
cat slovo.txt | tr 'A-Z' 'a-z' > slovo_lower.txt
sort -t ';' -k2,2 slovo_lower.txt > slovo_sort.txt
sort -t ';' -k1,1 hlaskovaci_abecdeda.txt > abeceda_sort
join -t ';' -1 2 -2 1 slovo_sort.txt abeceda_sort > join.txt
sort -t ';' -k2,2n join.txt | cut -d';' -f3 > uloha1_vysledek.txt

cat uloha1_vysledek