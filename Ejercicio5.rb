# Dados los siguientes array:

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
# Generar un hash que contenga los meses como llave y las ventas como valor:
hash_ventas = Hash[meses.zip ventas]
puts hash_ventas

# En base al hash generado:
#
# Invertir las llaves y los valores del hash.
puts hash_ventas.invert
# Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
puts hash_ventas.keys.max
