class Item
    attr_accessor :text
    attr_writer :checked
    
    def initialize(text = '')
        @text = text
        @checked = false
    end

    def to_s
        if @checked
            "[x] #{@text}"
        else
           "[ ] #{@text}" 
        end
    end
end