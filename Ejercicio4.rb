# Se tienen dos arrays uno con el nombre de personas y otro con las edades, se pide generar un hash con el nombre y edad de cada persona (se asume que no existen dos personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
# Se pide generar un hash con la información:
personas_hash = Hash[personas.zip edades]
puts personas_hash

# Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento. cantidad de ventas (a partir del hash invertido.)

def promedio(hash)
  suma = hash.values.inject(&:+)
  v = suma/hash.count
  puts v
end

promedio(personas_hash)
