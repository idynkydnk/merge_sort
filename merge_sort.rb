def merge_sort data
  returned_data = []
  if data.length == 1 
    return data 
  end
  if data.length == 2
    if data[0] > data[1]  
      return returned_data << data[1] << data[0]
    else
      return returned_data << data[0] << data[1]
    end
  else
    new_index = data.length / 2
    second_half = merge_sort(data[new_index..-1])
    first_half = merge_sort(data[0..(new_index-1)])
    i = 0
    x = 0
    data.length.times do
      if !first_half[i] || !second_half[x]
        if !first_half[i] && second_half[x]
          returned_data << second_half[x]
          x += 1
        elsif !second_half[x] && first_half[i]
          returned_data << first_half[i]
          i += 1
        end
      elsif second_half[x] < first_half[i]
        returned_data << second_half[x]
        x += 1
      else
        returned_data << first_half[i]
        i += 1
      end
    end
    return returned_data
  end 
  
end

data = [4,5,8,345,5,4]
puts merge_sort(data)

