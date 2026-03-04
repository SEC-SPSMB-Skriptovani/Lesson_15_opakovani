#!/bin/bash
echo "AHOJ" | fold -w1 | nl -w1 -s';' > slovo.txt
tr '[:upper:]' '[:lower:]' < slovo.txt > slovo_m.txt
sort -t';' -k2,2 slovo_m.txt > sorted

join -t';' -1 2 -2 1 sorted.txt hlaskovaci_abeceda.txt > conected.txt 
sort -t';' -k2,2n conected.txt | cut -d';' -f1 > sortedd.txt