set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "data/c-8462.eps"
set grid
set nokey
set size .3,.3
plot [0:3][2:8] 'data/c-8462.dat' with linespoints lw 4
