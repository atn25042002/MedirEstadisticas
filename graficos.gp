# Configuración del script Gnuplot
set terminal wxt  # Si estás en Windows
# set terminal qt   # Si estás en Linux o macOS

# Configuración de la ventana de gráficos
set multiplot layout 2,1  # Dividir la ventana en dos gráficos (2 filas, 1 columna)

# Configuración del primer gráfico (Uso de CPU)
set title "Uso de CPU"
set xlabel "Tiempo (segundos)"
set ylabel "Uso de CPU"
set yrange [0:1000]  # Rango del eje y para CPU
set style line 1 lc rgb "blue" lw 2  # Estilo de línea para CPU (grosor 2, color azul)
plot "datos_cpu.txt" using 1:2 with lines ls 1 title "Uso de CPU (ms)"

# Configuración del segundo gráfico (Uso de Memoria)
set title "Uso de Memoria"
set xlabel "Tiempo (segundos)"
set ylabel "Uso de Memoria (MB)"
set yrange [0:50]  # Rango del eje y para memoria
set style line 2 lc rgb "red" lw 2  # Estilo de línea para memoria (grosor 2, color rojo)
plot "datos_memoria.txt" using 1:2 with lines ls 2 title "Uso de Memoria (MB)"
