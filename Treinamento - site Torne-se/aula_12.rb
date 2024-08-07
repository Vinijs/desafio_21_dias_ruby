require 'byebug'

class Carro

  def initialize(nome = "Modelo padrão")
    @nome = nome
  end

  attr_accessor :nome, :porta, :painel, :roda
  attr_reader :pneu

  #  def pneu
  #    @pneu
  #  end

  # def nome=(value)
  #   @nome = value
  # end

  # def nome
  #   @nome
  # end

  # def pneu=(value)
  #   @pneu = value
  # end

  # # def pneu
  # #   @pneu
  # # end

  # def porta=(value)
  #   @porta = value
  # end

  # def porta
  #   @porta
  # end

  # def painel=(value)
  #   @painel = value
  # end

  # def painel
  #   @painel
  # end

  # def roda=(value)
  #   @roda = value
  # end

  # def roda
  #   @roda
  # end

  def mostrar(marca="Marca padrão")
    puts "Marca: #{marca} - Modelo: #{self.nome}"
  end
end


carro = Carro.new
debugger

Carro.new.mostrar

# def attr_accessor(*args)
#   args.each do |propriedade|
    
#     eval("
#        def propriedade=(value)
#           @propriedade = value
#         end
  
#         def propriedade
#           @propriedade
#         end
  
#         def propriedade=(value)
#           @propriedade = value
#         end
  
#         # def propriedade
#         #   @propriedade
#         # end
  
#         def propriedade=(value)
#           @propriedade = value
#         end
  
#         def propriedade
#           @propriedade
#         end
  
#         def propriedade=(value)
#           @propriedade = value
#         end
  
#         def propriedade
#           @propriedade
#         end
  
#         def propriedade=(value)
#           @propriedade = value
#         end
  
#         def propriedade
#           @propriedade
#         end
#     ")
#   end
# end