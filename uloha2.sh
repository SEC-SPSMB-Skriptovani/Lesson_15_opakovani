#!/bin/bash

#06                           ;  79
#hodnota znaku           poradi


tr -d '\r' < sifra.txt > sifra_xd.txt
tr -d '\r' < alphabet.txt > alphabet_xd.txt
sort -t';' -k1,1 sifra_xd.txt > sifra_sort.txt
sort -t';' -k1,1 alphabet_xd.txt > alphabet_sort.txt
join -t';' -1 1 -2 1 -o '1.2,2.2' sifra_sort.txt alphabet_sort.txt > step1.txt
sort -t';' -k1,1n step1.txt > uloha2_vysledek.txt
cut -d';' -f2 uloha2_vysledek.txt | tr '_' ' ' | tr -d '\n'