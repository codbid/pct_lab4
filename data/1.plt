set termoption enhanced
set terminal svg size 800,600 font "Arial, 16"
set encoding utf8
set output "1.svg"

set style line 1 lc rgb "0x6495ED" lt 1 lw 4 pt 7 ps 1
set style line 2 lc rgb "0x00FF00" lt 1 lw 4 pt 7 ps 1
set style line 3 lc rgb "0x0000FF" lt 1 lw 4 pt 7 ps 1
set style line 4 lc rgb "0xD2691E" lt 1 lw 4 pt 7 ps 1
set style line 5 lc rgb "0xFFA500" lt 1 lw 4 pt 7 ps 1
set style line 6 lc rgb "0xFF0000" lt 1 lw 4 pt 7 ps 1


set border lw 2
set grid
set key top left
set xlabel "Число потоков"
set ylabel "Коэффициент ускорения" rotate by 90
set xtics 1
set xrange [1:4]
set format y "%1.4f"
plot "1.dat" using 1:2 title "v1" with linespoints ls 1, \
"1.dat" using 1:3 title "v2" with linespoints ls 2, \
"1.dat" using 1:4 title "v3" with linespoints ls 3, \
"1.dat" using 1:5 title "v4" with linespoints ls 4, \
"1.dat" using 1:6 title "v5" with linespoints ls 5, \
"1.dat" using 1:7 title "linear" with linespoints ls 6, \