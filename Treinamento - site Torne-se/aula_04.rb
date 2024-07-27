require 'byebug'

a = 3
if a == 1 
  puts "O a é igual a 1"
elsif a == 3 
  puts "O a é igual a 3"
else
  puts "O a não é igual a 1"
end

case a
  when 1
    puts "O a é igual a 1"
  when 3
    puts "O a é igual a 3"
  else
    puts "O a não é igual a 1"
  end

unless a == 1
  puts "O a é diferente de 1"
end


puts "o valor de a é: #{a}" if a == 3
puts "o valor de a é: #{a}" unless a == 3

debugger

a = a == 3 ? 50 : 40
puts "O valor final de a com o ternário é de: #{a}"