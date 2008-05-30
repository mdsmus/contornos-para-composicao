set title "P <5 9 6 8>"
set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "c-5968.eps"
set grid
set nokey
plot [0:3][5:9] 'data/c-5968.dat' with linespoints lw 4
