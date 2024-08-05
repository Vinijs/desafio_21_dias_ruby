require 'singleton'

class ADesafio
  def initialize
    raise "Está classe não tem construtor"
  end

  def calcular
    raise "Este método precisa ser implementado"
  end

  def tipo
    self.class
  end
end

class Corrida < ADesafio
  def initialize;end
  def calcular
    1 + 1
  end
end

class Ciclismo < ADesafio
  def initialize;end
  def calcular
    1 + 2
  end
end

class Game < ADesafio
  def initialize;end
  def calcular
    1 + 5
  end
end

class CalculoDePontuacao
  include Singleton

  def self.calcula_pontuacao(atividades_do_joao)
    atividades_do_joao.each do |atividades_do_joao|
      atividade_grupo = atividades_do_joao.first.tipo
      puts "No(a) #{atividade_grupo} o joão tem: #{atividades_do_joao.sum{|a_joao| a_joao.calcular}}"
    end
    puts "A pontuação total do joão é #{atividades_do_joao.flatten.sum{|a_joao| a_joao.calcular}}"    
  
  end
end

atividades_do_joao_corrida = [
  Corrida.new,
  Corrida.new,
  Corrida.new
]

atividades_do_joao_ciclismo = [
  Ciclismo.new
]

atividades_do_joao_game = [
  Game.new,
  Game.new
]

atividades_do_joao = [
  atividades_do_joao_corrida,
  atividades_do_joao_ciclismo,
  atividades_do_joao_game
]



# puts Corrida.new.tipo
# puts Ciclismo.new.tipo

# puts "Na corrida o joão tem: #{atividades_do_joao_corrida.sum{|a_joao| a_joao.calcular}}"
# puts "No ciclismo o joão tem: #{atividades_do_joao_ciclismo.sum{|a_joao| a_joao.calcular}}"
# puts "No game o joão tem: #{atividades_do_joao_game.sum{|a_joao| a_joao.calcular}}"

# puts atividades_do_joao.inspect
atividades_do_joao.each do |atividades_do_joao|
  atividade_grupo = atividades_do_joao.first.tipo
  puts "No(a) #{atividade_grupo} o joão tem: #{atividades_do_joao.sum{|a_joao| a_joao.calcular}}"
end
puts "A pontuação total do joão é #{atividades_do_joao.flatten.sum{|a_joao| a_joao.calcular}}"

CalculoDePontuacao.calcula_pontuacao(atividades_do_joao)