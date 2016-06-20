# Generar 10 números enteros al azar y guardarlos dentro de un arreglo, luego calcular el promedio
require 'pp'

numeros = []
10.times{numeros << rand(20)}

puts "Numeros: "
pp numeros

print "Promedio: "
pp numeros.inject(0.0){ |acum, e| acum + e} / numeros.length
