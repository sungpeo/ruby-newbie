def gets_input
  n = gets.to_i
  ns = Array.new n
  n.times { |i| ns[i] = gets.to_i }
  ns
end

def merge(left, mid, right)
  left_idx = left
  right_idx = mid + 1
  sorted = []
  (left..right).each do
    if right_idx > right ||
       (@arr[left_idx] < @arr[right_idx] &&
        left_idx <= mid)

      sorted.push @arr[left_idx]
      left_idx += 1
    else
      sorted.push @arr[right_idx]
      right_idx += 1
    end
  end
  @arr[left..right] = sorted
end

def merge_sort(left, right)
  # puts "merge_sort(#{left}, #{right})"
  return if left >= right

  mid = (right + left) / 2
  merge_sort(left, mid)
  merge_sort(mid + 1, right)
  merge(left, mid, right)
end

if __FILE__ == $PROGRAM_NAME
  @arr = gets_input
  merge_sort 0, @arr.length - 1
  puts @arr
end
