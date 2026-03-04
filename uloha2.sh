#!/bin/bash

sort -t ';' -k1 sifra.txt > sifra_upraveno.txt
sort -t ';' -k1 alphabet.txt > alphabet_upraveno.txt

join -t ';' -1 1 -2 1 sifra_upraveno.txt alphabet_upraveno.txt > step1.txt

sort -t ';' -k2 step1.txt > step2.txt

cut -d';' -f3 step2.txt > zprava.txt
tr '_' ' ' < zprava.txt | tr -d '\n'