require 'byebug'

# debugger
# def teste(*parametros)
#   # debugger
#   return 1 if parametros.include? 2
#   a = "aa" + 1
#   1 + 420 - 3
# rescue Exception => e
#     puts "Opa aconteceu erro"
#     puts e.message
# end


# a = teste 1,7,3,4,5,6

# puts a


# teste
# teste
# teste
# teste

def captura_aluno
  aluno = {}
  puts "Digite o nome do aluno"
  aluno[:nome] = gets.strip
  
  puts "Digite o telefone do aluno"
  aluno[:telefone] = gets.strip

  aluno
end

def mostrar_alunos(alunos)
  alunos.each do |aluno|
    puts "======================================================"
    puts "aluno: #{aluno[:nome]}, telefone: #{aluno[:telefone]}"
  end
end

loop do
  puts "Bem-vindo ao programa"
  puts "Digite 0 para sair ou 1 para continuar"
  valor = gets.to_i

  break if valor == 0
  
  alunos = []
  3.times do
    
    alunos << captura_aluno
  end

  mostrar_alunos(alunos) 
  
end