# 미로탐색
# https://www.acmicpc.net/problem/2178

$n,$m = gets.split.map {|c| c.to_i}

$maze = Array.new $n
$d_map = Array.new($n) { Array.new($m) {0} }

(0..($n-1)).each do |i|
    $maze[i] = gets.chomp.split ''
end

def go_further(i, j, c)
    return if i<0 or j<0
    return if i>=$n or j>=$m
    return unless $maze[i][j]=='1'
    return unless $d_map[i][j]==0
    #puts "i=#{i}, j=#{j}, maze[i][j]=#{$maze[i][j]}, $d_map[i][j]=#{$d_map[i][j]}"

    c += 1
    $d_map[i][j] = c
    go_further(i-1, j, c)
    go_further(i+1, j, c)
    go_further(i, j-1, c)
    go_further(i, j+1, c)
end

go_further(0,0,0)
puts $d_map[$n-1][$m-1]
