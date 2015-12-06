require 'pry'

def merge(left_array, right_array)
  new_array = []

  until left_array.empty? && right_array.empty?
    if left_array.empty?
      new_array += right_array
      right_array = []
    elsif right_array.empty?
      new_array += left_array
      left_array = []
    elsif left_array[0] < right_array[0]
      new_array << left_array.shift
    else
      new_array << right_array.shift
    end
  end

  new_array
end

# puts merge([1,2,5,6], [3,3,4])

def merge_sort(array)
  return array if array.length == 1

  half = array.length / 2
  left_array = merge_sort(array[0...half])
  right_array = merge_sort(array[half..array.length])
  merge(left_array, right_array)
end

puts merge_sort( [7,8,10,-1,6, 5,1,3,7,2,5] )

# function mergeSort(array) {

#     // mergeSort() the left half of the array

#     // mergeSort() the right half of the array

#     // merge() the two halves

#     // return the merged array
# }