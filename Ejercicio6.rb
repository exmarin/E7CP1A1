# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.to_h
puts restaurant_menu
# Obtener el plato mas caro.
expensive = restaurant_menu.max_by{ |k ,v| v}
puts expensive[0]
# Obtener el plato mas barato.
cheap = restaurant_menu.min_by{ |k, v| v}
puts cheap[0]
# Sacar el promedio del valor de los platos.
sum = restaurant_menu.values.inject(0) { |sum, x| sum + x}
puts sum/restaurant_menu.size
# Crear un arreglo con solo los nombres de los platos.
platos = restaurant_menu.keys
print platos
puts '########################################'
# Crear un arreglo con solo los valores de los platos.
valores = restaurant_menu.values
print valores
# Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
# Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
