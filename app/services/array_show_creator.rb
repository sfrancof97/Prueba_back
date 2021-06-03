class ArrayShowCreator
    attr_reader :arr

    def array_show_creator(arr)
        arr= arr.sort
        index = 0 
        range = []

        while index <= arr.length - 1 
            if  arr[count + 1] == arr[count] + 1 && arr[count - 1] != arr[count] - 1 
                range[0]= arr[count]
            elsif arr[count-1] == arr[count] - 1 && arr[count+1] != arr[count] + 1
                range[1]= arr[count]
            end

            count = count + 1
        end

        range

    end
end