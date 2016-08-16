def missing(arr)
  missing = []

  arr.each_index do |idx|
    break if idx == arr.size - 1
    num = arr[idx]

    loop do
      if num.next != arr[idx+1]
        missing << num.next
      end
      break if num.next == arr[idx+1] || arr[idx+1].nil?
      num += 1
    end
  end

  missing
end

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []
