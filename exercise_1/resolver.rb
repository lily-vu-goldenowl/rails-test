def pair_of_two_distinct_elements(sum, arr)
  result = []
  filted_arr = arr.uniq.sort
  length_arr = filted_arr.length()

  filted_arr[0..(length_arr - 2)].each_with_index do |element, index|
    filted_arr[(index + 1)..(length_arr - 1)].each_with_index do |element2, index2|
      if element + element2 == sum
        result << [element, element2]
      end
    end
  end
  return result
end

result = pair_of_two_distinct_elements(10, [1, 4, 2, 1, 3, 6, 5])

puts result
