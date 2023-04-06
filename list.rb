require './item.rb'

class List
    attr_writer :items

    def initialize
        @items = Array.new()
    end

    def add_item(text)
        @items.push(Item.new(text))
    end

    def remove_item(index)
        @items.delete_at(index)
    end

    def checked_item(index)
        @items[index].checked = true
        @items[index].to_s
    end

    def remove_all
        @items.clear
    end

    def show_all
        if @items.length == 0
            puts "No hay articulos en tu lista de compras"
        else
            @items.each_index do |index|
                puts "#{index} - #{@items[index]}"
            end
        end
    end
end