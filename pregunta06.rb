# Generar 20 números enteros al azar y guardarlos dentro de un arreglo, mostrar el arreglo y luego mostrar del arreglo exclusivamente aquellos números que sean mayor que 10
# http://ruby-doc.org/core-2.2.0/Random.html

numeros = []
20.times do
  numeros.push(rand(20))
end

print numeros.select{ |e| e > 10}
