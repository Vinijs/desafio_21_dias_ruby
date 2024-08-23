# missings
require 'byebug'

class Danilo
  def self.method_missing(nome)
    puts "Metodo de classe #{nome}, não existe na classe #{self}"
  end

  def method_missing(nome)
    # puts "Metodo #{nome}, não existe na classe #{self}"
    nome = nome.to_s

    # debugger
    if nome =~ /busca_por_/
      puts "Buscando no arquivo por #{nome.gsub("busca_por_", "")}"
      return
    end

    File.open("database/Danilo.csv") do |arquivo|
      arquivo.each do |linha|
        campos = linha.split(";")

        # debugger
        unless campos.include?(nome)
          puts "Campo #{nome}, não existe no csv database/Danilo.csv"
        end

      end
    end

    return nil    
  end
end

# puts Danilo.teste
puts Danilo.new.busca_por_nome

############ COM PARAMETRO ############
class Danilo
  def self.method_missing(nome, parametro)
    nome = nome.to_s

    if nome =~ /busca_por_/
      puts "Buscando no arquivo por #{nome.gsub("busca_por_", "")}, com o valor #{parametro}"
      return
    end

    puts "Metodo de classe #{nome}, não existe na classe #{self}"
  end

  def method_missing(nome)
    nome = nome.to_s
    
    File.open("database/Danilo.csv") do |arquivo|
      arquivo.each do |linha|
        campos = linha.split(";")

        # debugger
        unless campos.include?(nome)
          puts "Campo #{nome}, não existe no csv database/Danilo.csv"
        end

      end
    end

    return nil    
  end
end

# puts Danilo.teste
puts Danilo.busca_por_teggkfkfjdefone("jsssoao")
