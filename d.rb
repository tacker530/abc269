# D - Do use hexagon grid
N = gets.chomp.to_i
hexagon = []
check = {}
N.times do |i|
  hexagon[i] = gets.chomp.split.map(&:to_i)
  check[hexagon[i]] = [hexagon[i]] 
end
pp hexagon
pp check

# 隣接の配列を調べる
def area(i,j)
  [
    [i - 1,j - 1],
    [i - 1,j    ],
    [i    ,j - 1],
    [i    ,j + 1],
    [i+1  ,j    ],
    [i+1  ,j + 1]
  ]
end

# 繋がってる？
def connect? (a,b)
  conn = area(a[0],a[1]) & [b]
  if conn.size >= 1 then
    true
  else
    false
  end
end

region = []

hexagon.combination(2).each do |a,b|
  puts "#{a} #{b} #{connect?(a,b)}"
end