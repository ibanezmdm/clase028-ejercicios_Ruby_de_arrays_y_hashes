# Generar 10 números enteros al azar y guardarlos dentro de un arreglo, luego calcular el promedio

numeros = []
10.times do
  numeros.push(rand(20))
end

print numeros

print numeros.inject(0.0){ |acum, e| acum + e} / numeros.length
