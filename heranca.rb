require 'byebug'

class Energia
  def criacao
    "Big bang"
  end
end

class Pessoa < Energia
  def initialize
    puts "estou no pai"
    @nome = "blablabla"
    @email = "blablabla@teste.com"
  end
  attr_accessor :nome, :email
end

class Fisica < Pessoa
  def initialize
    puts "estou no filho"
    @cpf = "333.333.333-33"
    @sobrenome = "lero lero"
    @rg = "66.666.666-2"
    super
  end
  attr_accessor :cpf, :sobrenome, :rg
end

class Juridica < Pessoa
  def teste(sss = "1232")
    puts sss
  end

  def teste

  end


  def initialize
    @cnpj = "33.333.333/2222-22"
    @inscricao_estadual = "SP20459493"
    @nome_fantasia = "Didox Business & tecnology"
    super
  end
  attr_accessor :cnpj, :nome_fantasia, :inscricao_estadual
end

# # puts Pessoa.new.inspect
# puts "==============================="
# # debugger
# puts Fisica.new.inspect
# puts "==============================="
# puts Fisica.new.methods - Class.methods
# puts "==============================="

# # puts Juridica.new.inspect
# puts "==============================="



class Prototipo
  attr_accessor :data_criacao

  public
    def methodo_publico
      puts "sssss - methodo publico"
    end

  protected
    def methodo_protegido
      puts "sssss - methodo protegido"
    end

  private
    def executa
      puts "sssss"
    end
    def executa2
    end

    def executa3
    end
end

class Carro < Prototipo
  attr_accessor :nome

  def andando
    self.methodo_protegido
  end

  def executa_filho
    self.executa
  end
end

Carro.new.andando