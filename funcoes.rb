# Roberto é um diretor de uma escola de música
# ele precisa de um programa que tenha as seguintes opções
# 1 - Cadastrar aluno (nome, matricula, notas)
# 2 - Cadastrar Nota de aluno
# 3 - Relatório das notas em média dos alunos
# 4 - Sair
# Faça o programa em app console utilizando 
# variáveis, loop, condicionais e array


def menu
    puts "Para começar, selecione uma opção do menu: "
    puts "1 - CADASTRAR ALUNO"
    puts "2 - CADASTRAR NOTA DOS ALUNOS"
    puts "3 - RELATÓRIO DAS NOTAS E MÉDIA DOS ALUNOS"
    puts "4 - SAIR"
end

def nenhum_aluno_cadastrado
  puts "Atenção! Nenhum aluno cadastrado!"
end

def cadastrar_aluno
      aluno = {matricula: "",nome: "",notas: []}
      puts "Digite a matricula do aluno: "
      aluno[:matricula] = gets.to_s
      puts "Digite o nome do aluno: "
      aluno[:nome] = gets.to_s
      alunos.push(aluno)
end

def cadastrar_nota_aluno
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
end

def relatorio
        puts "RELATÓRIO DE MÉDIAS E NOTAS DOS ALUNOS"
        if alunos.length == 0
          nenhum_aluno_cadastrado
        else
          alunos.each do |aluno|
            puts "============================================================="
            puts "Nome do Aluno: #{aluno[:nome]} - Matricula: #{aluno[:matricula]}"
            puts "Notas: #{aluno[:notas].join(", ")}"
            puts "Média: #{(aluno[:notas].sum.to_f) / aluno[:notas].length.to_f}"
            # puts aluno
          end
        end 
end

system 'clear'
require 'byebug'

puts "=================BEM-VINDO A ESCOLA DE MÚSICA ROBERTO CARLOS ============="

puts "=========================================================================="

menu()
puts "........................................................................"
menu
puts "........................................................................"

i = 0

alunos = []

while i != 4 do
    i = gets.to_i
  case i
    when 1
      cadastrar_aluno
    when 2
      cadastrar_nota_aluno
      when 3
      relatorio
      when 4
        break;
    end
    # sleep 3
    system "clear"
    puts alunos
end


