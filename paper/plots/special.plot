set title "Language Exposure Comparision"
set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
set output 'introduction.png'
set ylabel 'Languages'
set size ratio 0.5

set style data histogram
set style histogram cluster gap 4

set boxwidth 0.5 relative 
set style fill solid 0.5

set auto x
set yrange [0:15]
plot 'data' using 2:xtic(1) title col, \

