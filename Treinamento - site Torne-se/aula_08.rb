require 'byebug'
# a = {
#       nome: 'vinicius', 
#       tel:87870788
#     }

# a = {}

# a["nome".to_sym] = "vinicius"
# a["tel".to_sym] = 8087098089

# forma antiga
# b = {:nome=>"vinicius", :tel=>87870788}

# debugger

# puts a[:tel]

loop do
  puts "Bem-vindo ao programa"
  puts "Digite 0 para sair ou 1 para continuar"
  valor = gets.to_i

  break if valor == 0
  
  alunos = []
  3.times do
    aluno = {}

    puts "Digite o nome do aluno"
    aluno[:nome] = gets.strip

    puts "Digite o telefone do aluno"
    aluno[:telefone] = gets.strip

    alunos << aluno
  end

  alunos.each do |aluno|
    puts "======================================================"
    puts "aluno: #{aluno[:nome]}, telefone: #{aluno[:telefone]}"
  end  
  
end