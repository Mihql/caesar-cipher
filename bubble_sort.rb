def bubble_sort(array)
  array.each_with_index do |value_a, index_a|
    array[index_a + 1..-1].each_with_index do |value_b, index_b|
      if value_a > value_b
        value_a, value_b = value_b, value_a
      end
    end
  end

  array
end

array = [0,2,2,3,4,78]
p bubble_sort(array)