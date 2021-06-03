class ArrayCreator 
    attr_reader :lenght

    def initialize(lenght)
        @lenght = lenght.to_i
    end

    def array_creator
        numbers_array = []

        if lenght <= 30
            while  numbers_array.length() < lenght
                numbers_array.push(rand(1..30))
                numbers_array.uniq! #exists? para saber si existe 
            end
            numbers_array
        else
            while  numbers_array.length() < 30
                numbers_array.push(rand(1..30))
                numbers_array.uniq!
            end
             numbers_array 
        end
        
    end
  
    
end