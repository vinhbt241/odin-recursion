
def merge_sort(arr)
  if arr.length < 2
    return arr
  else
   left_half = merge_sort(arr[0...arr.length/2.floor])
   right_half= merge_sort(arr[arr.length/2.floor..-1])

   left_pointer = 0
   right_pointer = 0

   result = []

   while left_pointer < left_half.length && right_pointer < right_half.length
    if left_half[left_pointer] < right_half[right_pointer]
      result << left_half[left_pointer]
      left_pointer += 1
    else
      result << right_half[right_pointer]
      right_pointer += 1
    end
   end

   return result + left_half[left_pointer..-1] + right_half[right_pointer..-1]
  end
end

