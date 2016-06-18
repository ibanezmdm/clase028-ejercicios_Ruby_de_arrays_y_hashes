# Dado los siguientes arreglos:

a = [1, 2, 3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

# Utilizando como base el arreglo de la pregunta anterior, crear un arreglo nuevo remplazando todos los números y símbolos por string

fin = a.length-1

final = []
for i in 0..fin
  final.push(a[i].to_s)
  final.push(b[i].to_s)
  final.push(c[i])
end

print final
