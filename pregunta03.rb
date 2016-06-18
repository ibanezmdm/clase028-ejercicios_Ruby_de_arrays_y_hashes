# Dado los siguientes arreglos:

a = [1, 2, 3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

# Iterando los arreglos anteriroes crear un único arreglo final con:
# [1, :azul, Tacos, 2, :rojo, Quesadillas, 3, :amarillo, “Hamburguesas]

fin = a.length-1

final = []
for i in 0..fin
  final.push(a[i])
  final.push(b[i])
  final.push(c[i])
end

puts final
