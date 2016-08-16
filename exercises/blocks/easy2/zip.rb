def zip(arr1, arr2)
  zipped_arr = []

  arr1.each_index do |idx|
    zipped_arr[idx] = [arr1[idx], arr2[idx]]
  end

  zipped_arr
end

zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
