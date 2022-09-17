# C - Submask
N = gets.chomp.to_i
scale = N.to_s(2).reverse.chars
#pp scale

cols = 0
candidate = []
scale.each_with_index do |c,i|
  if c == "1" then
    #puts "#{i+1}"
    cols += 1
    candidate << 2**i
  end
end
#pp candidate

result = []
candidate.size.times do |i|
  candidate.combination(i).each do |a|
    result <<  a.sum
  end
end

puts result.sort
puts N