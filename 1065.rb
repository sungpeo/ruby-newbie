#encoding:utf-8
# 한수
# https://www.acmicpc.net/problem/1065

def is_it?(num)
  num_s = num.to_s
  gap = num_s[1].to_i - num_s[0].to_i
  gap == num_s[2].to_i - num_s[1].to_i
end

input = gets.chomp.to_i
if input < 100
  puts "#{input}"
  return
end
count = 99
(100..input).each do |num|
  count+=1 if is_it? num
end
puts count
