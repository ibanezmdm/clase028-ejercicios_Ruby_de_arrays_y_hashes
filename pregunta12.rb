# Se tiene un ejercicio con una cantidad par de arreglos, se pide agruparlos de a dos.
# ejemplo: [1,2,3,4,5,6,7,8] resultado: [[1,2],[3,4],[5,6],[7,8]]

require "pp"

arr = [1,2,3,4,5,6,7,8]

result = []

arr.each_with_index do |e, i|
  result << [e, e.next] if i.even?
end

pp result
