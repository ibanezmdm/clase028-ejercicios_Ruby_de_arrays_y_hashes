# Se tiene un arreglo anidado del tipo [[1,"azul"], [2,"verde"], [3,:rojo]] Se debe iterar el arreglo para generar
# un único arreglo con solo el segundo elemento de cada subarreglo repetido la cantidad de veces
# mencionadas en el primer elemento, ej:
# ["azul", "verde", "verde", :rojo, :rojo, :rojo]

require "pp"

arr = [[1,"azul"], [2,"verde"], [3,:rojo]]

result = []

arr.each {|e| e[0].times{ result << e[1]}}

pp result
