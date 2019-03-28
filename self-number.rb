self_numbers = Array.new(10001, true)
self_numbers[0] = false

(1..9973).each do |number|
  no_self = number
  number.to_s.each_char do |c|
    no_self += c.to_i
  end 
  self_numbers[no_self] = false if no_self < 10001
end
self_numbers.each_index do |i|
  puts i if self_numbers[i]
end

