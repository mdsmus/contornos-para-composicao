set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "data/c-5142.eps"
set grid
set nokey
set size .3,.3
plot [0:3][1:5] 'data/c-5142.dat' with linespoints lw 4
