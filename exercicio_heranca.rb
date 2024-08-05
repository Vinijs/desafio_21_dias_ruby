# ontem aprendemos como criar classes e reaproveitar metodos e propriedades
# referente a uma classe comum, ou um grupo de objetos
# faça um programa onde terá uma classe base onde esta classe tenha os atributos e metodos:
# id, nome, posicao, salvar, excluir, buscar, buscar_por_id, alterar_posicao
# tambem teremos uma classe filha que irá herdar os dados da classe pai
# na classe filha teremos as propriedades e metodos:
# processar, alterar_posicao, alertar, cargo, observacao

# após criar os modelos, testar o seu uso criando um exemplo de criação e utilização das classes
# e instancias

require 'byebug'

class Pessoa
  # def initialize
    
  # end

  attr_accessor :id, :nome, :posicao

  #debugger
  def salvar
    puts "Salvando a pessoa: #{@nome}"
  end

  def excluir
    puts "Excluindo a pessoa: #{@nome}"
  end

  def buscar(*nome)
    puts "Buscando nome: #{@nome}"
  end

  def buscar_por_id(*id)
    puts "O Id passando para identificar a pessoa é: #{@id}"
  end

  def alterar_posicao
    puts "Alterar posição classe Pessoa (Pai)"
  end
end

class Funcionario < Pessoa
  # def initialize
    
  # end

  attr_accessor :cargo, :observacao

  def processar
    puts "Processando o funcionario: #{@nome}"
  end

  def alterar_posicao
    puts "Alterar posição classe filha (Funcionario)"
  end

  def alertar
    puts "Alerta funcionario #{@nome} necessita de férias"
  end
end

pessoa_01 = Pessoa.new

pessoa_01.id = 1
pessoa_01.nome = "Vinicius"
pessoa_01.posicao = "Analista de Sistemas"

pessoa_01.salvar
pessoa_01.excluir
pessoa_01.buscar(pessoa_01.nome)
pessoa_01.buscar_por_id(pessoa_01.id)
pessoa_01.alterar_posicao

puts "================================================================"

pessoa_02 = Funcionario.new
pessoa_02.cargo = "Coordenador Geral de Informatica"
pessoa_02.observacao = "Admitido em 09/08/2024"
pessoa_02.id = 2
pessoa_02.nome = "Danilo"
pessoa_02.posicao = "Chefe"

pessoa_02.salvar
pessoa_02.excluir
pessoa_02.buscar(pessoa_02.nome)
pessoa_02.buscar_por_id(pessoa_02.id)
pessoa_02.processar
pessoa_02.alterar_posicao
pessoa_02.alertar




