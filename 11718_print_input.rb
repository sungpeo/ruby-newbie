
#while input = gets.chomp 
ARGF.each do |line|
  return if line == ''
  puts "#{line}"
end
