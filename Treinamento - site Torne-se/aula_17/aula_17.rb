require 'byebug'

# def String.mostrar_nova_string2
#   "nova string"
# end

# a = "vinicius"
# debugger

# def a.mostrar_nova_string
#   "nova string"
# end



puts "[[[[Inicio: #{self}]]]]"
class Carro

  puts "[[[[Class: #{self}]]]]"

  def initialize(nome = "Modelo Padrão")
    @nome = nome
  end

  attr_accessor :nome, :porta, :painel, :roda
  attr_reader :pneu

  def mostrar(marca = "Marca Padrão")
    puts "[[[[Method: #{self}]]]]"
    puts "Marca: #{marca} - Modelo: #{self.nome}"
  end

  def self.metodo_de_classe
    "de classe"
  end

end

def Carro.metodo_de_classe2
  "de classe"
end

puts "[[[[Fim: #{self}]]]]"

fiesta = Carro.new
golf = Carro.new

# def fiesta.mostrar
#   "Mostrar do fiesta"
# end

# def golf.mostrar
#   "Mostrar do golf"
# end

debugger

x = ""