require 'byebug'

class Pessoa
  attr_accessor :nome
end

module Formata
  def formata_cpf
    puts "formata"
  end

  def attr_accessor_do_danilo(*propriedades)
    propriedades.each do |propriedade|
        eval("
          def #{propriedade}=(value)
            @#{propriedade} = value
          end 

          def #{propriedade}
            @#{propriedade}
          end 
        ")
      end
  end
end


class Aluno < Pessoa
  #attr_accessor :nome, :cpf, :endereco
  include Formata
  attr_accessor_do_danilo :nome, :telefone
end


Aluno.class_eval do
  attr_accessor :nome, :cpf, :endereco

  def mostra_dados_aluno
    puts "Nome: #{@nome}"
    puts "CPF: #{@cpf}"
    puts "Endereço: #{@endereco}"
  end

  def method_missing(m, *args, &block)
    # debugger
    block.call
    if m.to_s.scan(/find_by/)
      retorno = block.call
      puts "Minha #{m.to_s.gsub("find_by_", "")} virá aqui em casa hoje a noite as #{args.first} - #{retorno}"
    else
      puts "Não há nenhum método chamado #{m} aqui."
    end
  end
end
a = Aluno.new
a.nome = "Danilo"
a.cpf = "Danilo"
a.endereco = "Danilo"
a.formata_cpf

a.find_by_baba("14:00") do
  "estou no bloco de código do methos missing"
end

# a.find_by_avo("14:00")
# a.find_by_irma("14:00")
# a.find_by_amiga("14:00")
# a.babas("14:00")

# b = Aluno.new
# b.nome = "Danilo"
# b.cpf = "Danilo"
# b.endereco = "Danilo"

# a.mostra_dados_aluno
# b.mostra_dados_aluno