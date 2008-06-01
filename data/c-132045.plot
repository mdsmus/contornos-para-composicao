set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "data/c-132045.eps"
set grid
set nokey
set size .4,.4
plot [0:5][0:5] 'data/c-132045.dat' with linespoints lw 4
