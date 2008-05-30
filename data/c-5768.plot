set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "data/c-5768.eps"
set grid
set nokey
set size .3,.3
plot [0:3][5:8] 'data/c-5768.dat' with linespoints lw 4
