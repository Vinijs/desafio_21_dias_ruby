# crie um programa que tenha uma receita de bolo
# esta receita precisa ter informações sobre o
# bolo feito e informações para todos os bolos

# crie uma classe onde você terá propriedades de um
# bolo o metodo cozinhar o bolo instanciado e cozinhar
# varios bolos passados por um array

# nome, cor, especial = Sim/Não
# cozinhar
# cozinhar_todos

bolos = []
class Bolo
  def initialize(nome = nil)
    @nome = nome
  end

  attr_accessor :nome, :cor, :especial

  def cozinhar
    puts "O bolo #{self.nome} está cozinhando"
    puts "Nome: #{@nome}"
    puts "Cor: #{@cor}"
    puts "Especial #{@especial}"
  end

  def self.cozinhar_todos(bolos)
    bolos.each do |bolo|
      puts "Bolo #{bolo.nome} está cozinhando"
      puts "============================================"
      bolo.cozinhar
    end
  end
end

bolo_de_laranja = Bolo.new
bolo_de_laranja.nome = "Bolo de Laranja"
bolo_de_laranja.cor = "Laranja"
bolo_de_laranja.especial = "SIM"
bolo_de_laranja.cozinhar

bolo_de_chocolate = Bolo.new
bolo_de_chocolate.nome = "Bolo de Chocolate"
bolo_de_chocolate.cor = "Marrom"
bolo_de_chocolate.especial = "Não"
bolo_de_chocolate.cozinhar

Bolo.new("Bolo de morango").cozinhar
Bolo.cozinhar_todos([
  Bolo.new("Bolo de Chocolate"),
  Bolo.new("Bolo de manga"),
  Bolo.new("Bolo de balnilha"),
  Bolo.new("Bolo de limão"),
])

# bolo = Bolo.new
# bolo.nome = "Bolo de Morango"
# bolo.cozinhar

Bolo.cozinhar_todos([bolo_de_laranja, bolo_de_chocolate])