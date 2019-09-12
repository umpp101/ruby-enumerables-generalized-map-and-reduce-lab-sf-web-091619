def map(array)
  new_array = []
  i = 0 
  while i < array.length do
    new_array.push(yield(array[i]))
  i += 1 
end
new_array
end


def reduce(array, starting_point = 0)
  total = starting_point
  i = 0 
  while i < array.length do
    total = yield(array[i], total)
  i += 1 
end
total 
end 
