# 10.times do |i| 
#   puts i
# end

# (1..20).each{|i| puts i}

# [1,2,3,4,5,6,7].each{|i| puts i}

# while do
  
# end

# unless !(1 == 1) 
#   puts "olá"
# end

# enquanto estamos na aula, o danilo estará explicando 
# lógica de programação e desenvolvimento pessoal, aluno você concorda com isso ?

notas = []
em_aula = true

while em_aula do
  system "clear"
  puts "Qual a nota você daria para este atendimento (0..10)"
  nota = gets.to_f
  break if nota == -1
  notas << nota
  # puts "A aula já acabou ? (S/N)"
  # em_aula = gets.upcase.strip != "S"
end

puts "O seu NPS é de : #{(notas.sum / notas.length)}"

