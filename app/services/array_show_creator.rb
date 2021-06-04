class ArrayShowCreator
  attr_reader :arr

  def array_show_creator(arr)
    arr= arr.sort
    index = 0 
    range = []
    

    while index <= arr.length - 1 
      if  arr[index + 1] == arr[index] + 1 && arr[index - 1] != arr[index] - 1 
        range[0]= arr[index]
      elsif arr[index - 1] == arr[index] - 1 && arr[index + 1] != arr[index] + 1
        range[1]= arr[index]
      end
     
      index = index + 1
      
    end

    range

  end
end