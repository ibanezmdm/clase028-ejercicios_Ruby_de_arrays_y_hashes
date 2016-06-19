# Se tiene un arreglo de alumnos, cada alumno es un hash
# alumnos = [{name:"Juan Cristobal", edad:17}, {name: "Belen", edad:21}]
# Calcular la edad promedio del curso
# Encontrar al alumno más joven del curso

require "pp"

alumnos = [{name:"Juan Cristobal", edad:17}, {name: "Belen", edad:21}]
pp "Almnos: #{alumnos}"

print "Promedio: "
pp alumnos.map{|e| e.values}.inject(0.0){|acum, e| acum + e[1]} / alumnos.size

print "El alumno menor es: "
temp = alumnos.map{|e| e.values}
menor = temp[0]
temp.each{|e| menor = e if e[1] < menor[1]}
pp menor
