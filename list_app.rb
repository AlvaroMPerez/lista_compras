require "./item.rb"
require "./list.rb"

class ListApp
    attr_writer :list
  def initialize
    @list = List.new
  end

  def run
    puts "Hola, es la lista"
    loop do
        puts "'a' es para agregar un articulo"
        puts "'r' es para remover un articulo"
        puts "'v' Se muestran todos los articulos"
        puts "'m' Marcar un articulo"
        puts "'b' Borrar todos los articulos"
        puts "'s' Para salir"
        input = gets.chomp
        case input
        when "a"
          puts "introduce nuevo item"
          item = gets.chomp
          @list.add_item(item)
        when "v"
          puts "Estos es todo en la lista"
          @list.show_all
        when "r"
          Puts "Con el indice, que articulo desea eliminar?"
          remove = gets.chomp
          @list.remove_item()
        when "s"
            break
        end
    end
    puts "Gracias por usar la lista"
  end
end

list_app = ListApp.new
list_app.run