set terminal postscript eps enhanced
set ylabel "altura"
set xlabel "tempo"
set output "data/c-971-11-35-13.eps"
set grid
set nokey
set size .4,.4
plot [0:5][3:13] 'data/c-971-11-35-13.dat' with linespoints lw 4
