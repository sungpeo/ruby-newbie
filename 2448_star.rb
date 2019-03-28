def space(length)
  str = ''
  length.times { str += ' ' }
  str
end

input = gets.to_i
pic_stars = Array.new(input)
pic_stars[0] = '  *  '
pic_stars[1] = ' * * '
pic_stars[2] = '*****'

i = 3
while i < input 
  (0..(i-1)).each do |j|
    pic_stars[i+j] = "#{pic_stars[j]} #{pic_stars[j]}"
    pic_stars[j] = space(i) + pic_stars[j] + space(i)
  end
  i *= 2
end

pic_stars.each { |s| puts s }
