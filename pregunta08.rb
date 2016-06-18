# Se tiene un string del tipo "1,2,7,1,3,5,3.4,9,1"
# Se pide: - Calcular el promedio - Calcular la moda (o sea mostrar el número que más se repite)
require "pp"

cadena = "1,2,7,1,3,5,3.4,9,1"

arr = cadena.split(",").map{ |e| e.to_f }

puts "cadema como array de enteros"
pp arr

puts "Promedio"
pp arr.inject(0.0){ |acum, e| acum + e} / arr.length

puts "moda:"
pp arr.group_by{ |e| e}.map { |k, v| [k, v.length] }.to_h.max_by{|k,v| v}[0]
