# B - Rectangle Detection
lines = Array.new(10)
lines.each_with_index do |row,i|
  lines[i] = gets.chomp
end

NUL_LINE = ".........."

a = 0 
b = 0 
c = 0
d = 0

zone_flag = false 
match_line = nil

lines.each_with_index do | row,i |
  if zone_flag == false then
    if row != NUL_LINE then
      match_line = row.chars
      a = i + 1
      b = a
      zone_flag = true
    end
  else
    if row != NUL_LINE then
      b = i + 1
      zone_flag = true
    else
      zone_flag = false
    end
  end
end

puts "#{a} #{b}"


zone_flag = false
match_line.each_with_index do | col,i |
  if zone_flag == false then
    if col != "." then
      c = i + 1
      d = c
      zone_flag = true
    end
  else
    if col != "." then
      d = i + 1
      zone_flag = true
    else
      zone_flag = false
    end
  end
end
puts "#{c} #{d}"
