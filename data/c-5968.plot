set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "data/c-5968.eps"
set grid
set nokey
set size .3,.3
plot [0:3][5:9] 'data/c-5968.dat' with linespoints lw 4
