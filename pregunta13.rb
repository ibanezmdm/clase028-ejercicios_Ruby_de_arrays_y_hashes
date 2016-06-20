# Se tiene un array con los días feriados.
# feriados = ["Lunes 19", "Martes 20","Miercoles 31"]
# y se tiene una array con todos los días de clase del mes
# dias = ["Lunes 3", "Martes 4" .. ]
# 1) Suponiendo que el lunes cae el día tres, y este tiene 31 días. Generar el arreglo completo de días
# 2) Crear un arreglo manual con 5 feriados
# 3) Mostrar los días que hay clases ese mes.
# 4) Repetir la pregunta anterior pero esta vez sacando sabados y domingos de la lista.

require "pp"

def generar_mes_por_lunes(lunes, max)
  semana = ["lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"]
  mes = []
  j=0

  for i in lunes..max
    mes << "#{semana[j]} #{i}"
    j == 6 ? j = 0 : j += 1
  end
  return mes
end

puts "Mes empezando desde el lunes 3"
mes_completo = generar_mes_por_lunes(3, 31)
pp mes_completo


puts "Mes sin feriados"
feriados = ["lunes 24", "martes 4","viernes 14", "lunes 17", "lunes 10"]
mes_sin_feriado = mes_completo.reject{|e| feriados.include? e}

pp mes_sin_feriado

puts "Mes sin feriados y weekend"
weekend = ["sab", "dom"]
mes_sin_feriado_ni_weekend = mes_sin_feriado.reject{|e| weekend.include? e[0..2]}

pp mes_sin_feriado_ni_weekend
