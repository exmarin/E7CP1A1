h = {"x" => 1, "y" => 2}
# Agregar el string z con el valor 3.
h["z"] = 3
puts h
# Cambiar el valor de x por 5.
h["x"] = 5
puts h
# Eliminar la clave y.
h.delete("y")
puts h
# Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
h.each { |e,v| puts 'yeaah' if e == "z" }

# Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
puts h.invert

# Ejemplo:
#  x = {"a": "hola" }
# Se transforme en:
#
# x = {"hola": "a"}
