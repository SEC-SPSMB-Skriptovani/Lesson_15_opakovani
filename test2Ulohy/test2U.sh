#!/bin/bash

sort -t';' -k1,1 sifra.txt > sifra_sorted.txt
join -t';' -1 1 -2 1 sifra_sorted alphabet.txt > message.txt
sort -t';' -k2,2n message.txt | cut -d';' -f3 | tr -d '\n' > vysledek.txt

cat vysledek.txt
echo""