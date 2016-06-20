# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.

#restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1. Obtener el plato mas caro
# 2. Obtener el plato mas barato
# 3. Sacar el promedio del valor de los platos
# 4. Crear un arreglo con solo los nombres de los platos
# 5. Crear un arreglo con solo los valores de los platos
# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
# 7. Dar descuento del 20% para los platos que tengan un nombre de mas 1 una palabra.

require "pp"

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

print "1. Obtener el plato mas caro: "
pp restaurant_menu.sort_by{|k, v| v}.last

print "2. Obtener el plato mas barato: "
pp restaurant_menu.sort_by{|k, v| v}.first

print "3. Sacar el promedio del valor de los platos: "
pp restaurant_menu.values.inject(0.0){|acum, e| acum + e} / restaurant_menu.size

print "4. Crear un arreglo con solo los nombres de los platos: "
pp restaurant_menu.keys

print "5. Crear un arreglo con solo los valores de los platos: "
pp restaurant_menu.values

print "6. menu con IVA: "
pp restaurant_menu.map{|k, v| [k, v*1.19]}.to_h

print "Dar descuento del 20% para los platos que tengan un nombre de mas 1 una palabra: "
pp restaurant_menu.map{|k, v| k.split(" ").size == 2 ? [k, (v-v*0.2)] : [k, v]}.to_h
