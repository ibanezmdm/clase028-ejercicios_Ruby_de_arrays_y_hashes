# Se tiene un arreglo que contiene arreglos dentro, [1,2,3,[1,2,3],4,5,6,[1,2,3]], se pide que si existe un arreglo dentro de ese arreglo, se sumen los elementos interiores y se guarden en un arreglo completamente nuevo, los elementos que no esten dentro de un arreglo serán ignorados.
# En el ejemplo
# anterior el resultado quedaría:
# [6,6]

require "pp"

arr = [1,2,3,[1,2,3],4,5,6,[1,2,3]]

def suma_array(arr)
  arr.inject(0){ |sum,e| sum +e}
end

result = []

arr.each{ |e| result << suma_array(e) if e.class == Array}

pp result

# Sebastian Cornejo
# Yo hice esto
# a =  [1,2,3,[1,2,3],4,5,6,[1,2,3]]
# r = a.select { |e| e.class == Array }.map { |e| e.inject { |sum, x| sum += x} }
