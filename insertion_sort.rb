require 'pry'

def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = right_index
    while(i >= 0 && array[i] > value)
        # copy the element
        array[i+1] = array[i]
        i -= 1
    end

    # insert the actual element
    array[i+1] = value;

    # return the array with the inserted element
    array
end

def insertion_sort(array)
  result = [ array[0] ]
  i = 0

  until result.length == array.length
    result = insert(result, i, array[i+1])
    i += 1
  end

  result
end

puts insertion_sort( [7, 8, 10 , -1, 6, 5,1,3,7,2,5] )

