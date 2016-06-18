# Dado los siguientes arreglos:

a = [1, 2, 3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

# Se pide iterar sobre los arreglos para mostrar la información de la siguiente forma:
# 1 :amarillo Tacos
# 2 :rojo Quesadillas
# 3 :azul Hamburguesas

a.each_with_index do |a_e, a_index|
  b.each_with_index do |b_e, b_index|
    c.each_with_index do|c_e, c_index|
      print "#{a_e} :#{b_e} #{c_e} \n" if (a_index == 0) and (b_index == b.length-1) and (c_index == 0)
      print "#{a_e} :#{b_e} #{c_e} \n" if (a_index == 1) and (b_index == 1) and (c_index == 1) 
      print "#{a_e} :#{b_e} #{c_e} \n" if (a_index == a.length-1) and (b_index == 0) and (c_index == c.length-1)
    end
  end
end
