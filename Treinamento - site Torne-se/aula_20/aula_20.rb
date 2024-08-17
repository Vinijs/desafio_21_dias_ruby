require 'byebug'

# a = " puts 1 + 2 "
# debugger

# eval(a)

class Teste
  def initialize
    @variavel = "danilo"
  end

  def variavel=(valor)
    @variavel = valor
  end

  private
  def variavel_metodo
    @variavel
  end
end

teste = Teste.new
# debugger
puts teste.instance_eval{ @variavel }
puts teste.instance_eval{ variavel_metodo }


teste.instance_eval do
  puts self
end

# debugger

teste.instance_eval do
  def variavel
    puts "metodo"
  end

  def metodo2
    puts "metodo"
  end

  def metodo3
    puts "metodo"
  end
end
# debugger
puts teste.variavel


#============================================================

class Teste
end


Teste.instance_eval do
  def metodo_de_classe
    puts "metodo de classe instance_eval"
  end

  def metodo_de_classe2
    puts "metodo de classe instance_eval2"
  end
end

# debugger
Teste.metodo_de_classe
Teste.metodo_de_classe2

#============================================================

class Teste;end

Teste.class_eval do
  def metodo_de_classe
    puts "metodo de classe instance_eval"
  end

  def metodo_de_classe2
    puts "metodo de classe instance_eval2"
  end
end

# debugger
Teste.new.metodo_de_classe
Teste.new.metodo_de_classe2

#============================================================

# não funciona
# def String.teste
#   "sssdds"
# end

# "danilo".teste

# ==============
String.class_eval do
  def teste
    "sssdds"
  end
end
"danilo".teste
# debugger
# ==============
danilo = "danilo"
def danilo.teste2
  "sssdds 333"
end
danilo.teste2
# ==============
String.instance_eval do
  def de_classe
    "sss classe dds"
  end
end
String.de_classe
# ==============
def String.mostrar_nova_string2
  "nova string"
end
# debugger
String.mostrar_nova_string2
# ==============
class << String
  def ola1
    "olha danilo"
  end
end
# debugger
String.ola1
# ==============

#============================================================

module AtributosDinamicos
  def atributo(attr)
    class_eval %{
      def #{attr}
        @#{attr}
      end
      def #{attr}=(value)
        @#{attr} = value
      end
      }    
  end
end

class Teste
  extend AtributosDinamicos
  atributo :nome
  atributo :nome2
  atributo :nome3
  atributo :nome4
  atributo :nome5

end

# debugger
teste = Teste.new
teste.nome = "vinicius"
teste.nome

#============================================================

class ClasseBloco
  def metodo1
    puts "metodo 1"
  end
  def metodo2
    puts "metodo 2"
  end

  def fique_a_vontade_em_executar(&bloco)
    instance_eval(&bloco)
  end

  private
  def metodo3
    puts "metodo 3"
  end
end

classe_bloco = ClasseBloco.new
classe_bloco.fique_a_vontade_em_executar do
  metodo1
  metodo2
  metodo3

  def metodo_em_bloco
    puts "metodo definido em bloco"
  end
end

debugger

classe_bloco.metodo_em_bloco

x = ""






