def bubble_sort(array)
  sorted = false

  until sorted == true
    sorted = true
    i = 0

    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        temp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = temp
        sorted = false
      end
    end
  end

  array
end

puts bubble_sort( [7,8,10,-1,6, 5,1,3,7,2,5] )
