require 'byebug'

###############################
# danilo = "teste"
# def danilo.olha
#   "teste danilo"
# end

# a = danilo.clone
# a.olha

# # b = danilo.dup
# # b.olha

# cc = a.dup

# debugger

# def cc.novo
#   2
# end

# clone = copia variáveis e metodos
# dup = publica sem a cópia da metaprogramação




#############################################

# danilo = "teste"
# def danilo.olha1
#   "teste danilo"
# end
# def danilo.olha2
#   "teste danilo"
# end
# def danilo.olha3
#   "teste danilo"
# end

# cleber = "teste"
# class << cleber
#   def rodar1
#     "opa"
#   end
#   def rodar2
#     "opa"
#   end
#   def rodar3
#     "opa"
#   end
# end


#########################################################

# class Danilo

#   class << self
#     def olha1
#       "olá danilo"
#     end
  
#     def olha2
#       "olá danilo"
#     end
  
#     def olha3
#       "olá danilo"
#     end
#   end
# end

# debugger

# Danilo.ola


########################################################

# class Danilo
#   class << self
#     attr_accessor :nome, :endereco, :telefone
#   end
# end
# debugger

# Danilo.nome

########################################################

# module Utilidades
#   class Cpf
#     def validar

#     end
#   end
#   class Cnpj
#     def validar

#     end
#   end
# end

# debugger
# Utilidades::Cpf 

########################################################

# module Validacoes
#   def validar_cpf
#     true
#   end
#   def validar_cnpj
#     false
#   end
# end

# module Mostrar
#   def ola
#     puts "dados"
#   end
#   def ola2
#     puts "dados2"
#   end
# end

# class Cliente
#   include Validacoes
#   include Mostrar
# end

# class Fornecedor
#   include Validacoes
# end

# debugger

# Cpf.new.Cpf
########################################################

# module Validacoes
#   def validar_cpf
#     true
#   end
#   def validar_cnpj
#     false
#   end
# end

# a = "ss"
# a.extend Validacoes

# debugger

########################################################

# module Teste
#   def tirar_espacos 
#     self.gsub(" ", "-")
#   end
# end

# module Teste2
#   def metodo_de_classe 
#     "teste"
#   end
# end

# String.include Teste
# String.extend Teste2
# debugger

########################################################
# module Validacoes
#   def validar_cpf
#     true
#   end
#   def validar_cnpj
#     false
#   end
# end

# class Teste
#   class << self
#     include Validacoes
#   end
# end

# class Teste2
#   extend Validacoes
# end

# debugger

########################################################

# module InstanciaEClasse
#   def instancia
#     "metodo de instancia"
#   end  

#   module Classe
#     def de_classe 
#       "metodo de classe"
#     end
#   end
# end

# class Teste
#   include InstanciaEClasse
#   extend InstanciaEClasse::Classe
# end

# Teste.new.instancia
# Teste.de_classe

# debugger

########################################################

module InstanciaEClasse
  def instancia
    "metodo de instancia"
  end

  def instancia2
    "metodo de instancia"
  end
  
  def self.included(cls)
    puts "------#{cls} -----"
    cls.extend Classe
  end

  module Classe
    def de_classe 
      "metodo de classe"
    end
  end
end

class Teste
  include InstanciaEClasse
end

debugger

Teste.new.instancia
Teste.de_classe
x = ""  