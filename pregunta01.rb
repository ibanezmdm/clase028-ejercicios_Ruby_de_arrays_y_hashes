# Dado los siguientes arreglos:

a = [1, 2, 3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

# Se pide iterar sobre los arreglos para mostrar la información de la siguiente forma:
# 1 :azul Tacos
# 2 :rojo Quesadillas
# 3 :amarillo Hamburguesas

a.each_with_index do |a_e, a_index|
  b.each_with_index do |b_e, b_index|
    c.each_with_index do|c_e, c_index|
      puts "#{a_e} :#{b_e} #{c_e}" if (a_index == b_index) and (a_index == c_index)
    end
  end
end
