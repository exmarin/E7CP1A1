# Se tiene un hash con el inventario de un negocio de computadores.

inventario = {:Notebooks => 4, :"Computador Escritorio" => 6, :Routers => 10, :Impresoras => 6}

# Se pide:
#
# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
#
# Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
 def add_element(hash)
   puts 'Agrega un item,Ejemplo: Pendrives,100'
   input = gets.split(',').map {|ele| ele.strip}
   hash[input[0].to_sym] = input[1].to_i
   puts hash
 end

 def delete_element(hash)
   puts hash, "\n"
   puts 'Ingrese el item a eliminar.'
   choice = gets.chomp.split.map(&:capitalize).join(' ')
   hash.delete(choice.to_sym) { |ele| puts "El #{ele} no se encuentra en el inventario" }
   print hash
 end

 def update_element(hash)
   puts hash, "\n"
   puts 'Ingrese el item para editar.'
   update_element =  gets.chomp.split.map(&:capitalize).join(' ')
   puts 'Ingresa el nuevo stock'
   update_stock = gets
   hash[updated_element.to_sym] = updated_stock.to_i
   print hash
 end

 def stock_summary(hash)
   stock = hash.values.inject(0){|sum, v| sum + v}
   puts "El inventario actualmente del stock es #{stock} "
 end

 def max_stock(hash)
   max = hash.max_by {|key,value| value}
   puts "El producto con mayor stock es #{max[0]} con #{max[1]} elementos"
 end
#
# Ejemplo del input: "Pendrives, 100"
# Si el usuario ingresa 2, podrá eliminar un item.
#
# Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
#
# Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.

# Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
#
# Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
#
# El programa debe repertirse hasta que el usuario ingrese 7 (salir).



puts "Sistema de inventario"
puts '########################################################'
option = 0
while option != '7'
  puts "ingresa 1 para agregar"
  puts "ingresa 2 para eliminar"
  puts "ingresa 3 para actualizar"
  puts "ingresa 4 para ver resumen de stock"
  puts "ingresa 5 para ver el item con mayor cantidad de stock"
  puts "ingresa 6 para ver si existe el item"
  puts "ingresa 7 para salir"

  option = gets.chomp

  puts case option

  when '1'
    add_element(inventario)
  when '2'
    delete_element(inventario)
  when '3'
    update_element(inventario)
  when '4'
    stock_summary(inventario)
  when '5'
    max_stock(inventario)
  when '6'

  end
end
