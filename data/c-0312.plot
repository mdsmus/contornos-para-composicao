set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "data/c-0312.eps"
set grid
set nokey
set size .3,.3
plot [0:3][0:3] 'data/c-0312.dat' with linespoints lw 4
