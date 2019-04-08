count = Array.new(10_001, 0)
gets.to_i.times { count[gets.to_i] += 1 }
count.each_with_index do |v, i|
  v.times { puts i } unless v.zero?
end
