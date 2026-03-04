#!/bin/bash

echo "SLOVICKO" | fold -w1 | nl -w1 -s';' > slovicko.txt

cat slovicko.txt | tr 'A-Z' 'a-z' > slovicko.lower.txt

sort -t ';' -k2,2 slovicko.lower.txt > slovicko.upraveno.txt
sort -t ';' -k1,1 hlaskovaci_abecdeda.txt > abecdeda_upraveno
join -t ';' -1 2 -2 1 slovicko.upraveno.txt abecdeda_upraveno > joined.txt
sort -t ';' -k2,2n joined.txt | cut -d';' -f3 > vysledek.txt
