# Se tiene un arreglo con las posiciones de una flota [[2,3],[3,4],[3,3]], se pide al usuario que ingrese 3 pares de números, el programa debe decir la cantidad de aciertos que tuviste.
# Luego generar una nueva flota al azar con posiciones entre 0 y 5.

require "pp"

flota = [[2,3],[3,4],[3,3]]

user = []
aciertos = []

3.times do
  c = []
  puts("ingrese coordenada Nro: #{user.length+1}")
  puts("Ingrese X:")
  c.push(gets.chomp.to_i)
  puts("Ingrese Y:")
  c.push(gets.chomp.to_i)
  user.push(c)
end

puts "La flota es:"
pp flota
puts "tu elegiste:"
pp user

aciertos = flota & user

puts "Tus aciertos son: #{aciertos.size}"
pp aciertos

puts "Nueva Flota:"
flota.map!{|e| [rand(9), rand(9)]}
pp flota
