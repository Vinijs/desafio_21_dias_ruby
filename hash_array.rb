# Roberto é um diretor de uma escola de música
# ele precisa de um programa que tenha as seguintes opções
# 1 - Cadastrar aluno (nome, matricula, notas)
# 2 - Cadastrar Nota de aluno
# 3 - Relatório das notas em média dos alunos
# 4 - Sair
# Faça o programa em app console utilizando 
# variáveis, loop, condicionais e array

puts "=================BEM-VINDO A ESCOLA DE MÚSICA ROBERTO CARLOS ============="

puts "=========================================================================="

i = 0

alunos = []

while i != 4 do

  puts "Para começar, selecione uma opção do menu: "
    puts "1 - CADASTRAR ALUNO"
    puts "2 - CADASTRAR NOTA DOS ALUNOS"
    puts "3 - RELATÓRIO DAS NOTAS E MÉDIA DOS ALUNOS"
    puts "4 - SAIR"
    
    i = gets.to_i

  case i
    when 1
      aluno = {matricula: "",nome: "",notas: []}
      puts "Digite a matricula do aluno: "
      aluno[:matricula] = gets.to_s
      puts "Digite o nome do aluno: "
      aluno[:nome] = gets.to_s
      alunos.push(aluno)
    when 2
      puts "Informe a matricula do aluno: "
      matricula = gets
      aluno_encontrado = false
      alunos.each do |a|
        if a[:matricula] == matricula
          puts "Informe a nota do aluno: "
          a[:notas] << gets.to_f
          aluno_encontrado = true
          break
        end
      end
      puts "Aluno não encontrado" unless aluno_encontrado
      when 3
        # media
      when 4
        break;
    end
    sleep 3
    system "clear"
    puts alunos
end


