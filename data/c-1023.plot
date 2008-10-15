set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "data/c-1023.eps"
set grid
set nokey
set size .3,.3
plot [0:3][0:3] 'data/c-1023.dat' with linespoints lw 4
