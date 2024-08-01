require 'byebug'

# debugger
# top = 4
# now = 0
# puts "While #{now += 1} .. #{top}" while now >= top


index = 0
# loop do
#   # debugger
#   index += 1
#   next if index == 5 or index == 8
#   puts index

#   break if index > 20
# end

# 8.times do |i|
#   next if i % 2 != 0 
#   puts i
# end

# for i in 1..7
#   # next if i % 2 == 0
#   puts i
# end

# puts (0..7).class

# (100..256).each do |i| 
#   puts i  
# end

a = [1,2,3,4,5].map{ |i| " oi - #{i}"} 

a.each do |i|
  puts i
end