require './item.rb'
require './list.rb'

class ListApp
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run
        puts "Bienvenido a tu lista de compras"
        loop do
            puts
            puts "Que deseas hacer?"
            puts "a - Agregar un articulo"
            puts "r - Eliminar un articulo"
            puts "v - Ver todos los articulos"
            puts "m - Marcar un articulo"
            puts "b - Eliminar todos los articulos"
            puts "s - Salir de la aplicacion"
            input = gets.chomp
            case input
            when 'a'
                puts "Ingresa el nombre del articulo"
                text = gets.chomp
                @list.add_item(text)
                40.times { print '*' }
                puts "\n#{text} ha sido agregado a tu lista"
                40.times { print '*' }
            when 'r'
                puts "Ingresa el numero del articulo que deseas eliminar"
                index = gets.chomp.to_i
                item = @list.remove_item(index)
                40.times { print '*' }
                puts "\n#{item.text} ha sido eliminado de tu lista"
                40.times { print '*' }
            when 'v'
                @list.show_all
            when 'm'
                puts "Ingresa el numero del articulo que deseas marcar"
                index = gets.chomp.to_i
                item = @list.checked_item(index)
                40.times { print '*' }
                puts "\n#{item} ha sido marcado como comprado"
                40.times { print '*' }
            when 'b'
                puts "Estas seguro que deseas eliminar todos los articulos? (s/n)"
                input = gets.chomp
                if input == 's'
                    @list.remove_all
                else
                    puts "Operacion cancelada"
                end
            when 's'
                break
            else
                puts "Opcion invalida"
            end
        end
        puts 'Gracias por usar la aplicacion'
    end
end

list_app = ListApp.new
list_app.run