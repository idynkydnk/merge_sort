def merge_sort data
  return data if data.length == 1
  if data.length == 2
    data[1] > data[2] ? return data[data[2], data[1]] : return data[data[1], data[2]]
  end
  
end

data = [4,6,7,2]
puts merge_sort(data)

