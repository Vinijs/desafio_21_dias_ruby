# Danilo é um empresario que trabalha na empresa didox business
# Ele precisa de um programador que faça um software que tenha alguns
# recursos:
# 1 - Calcular a tabuada do número digitado
# 2 - ler um nome e mostrar este nome concatenado com a frase vamos lá guerreiros
# 3 - Calcular a tabuada e mostrar também a frase acima com o nome
class Tabuada
  def calcular_tabuada
    puts "============== CALCULAR TABUADA =========================="
    puts "Informe o número"
    n = gets.to_i
    (0..10).each do |i|
      puts "#{n} X #{i}  = #{n * i}"
    end
  end

  def concatenar_nome
    puts "============== NOME ADICIONADO A FRASE ===================="
    puts "Informe um nome"
    nome = gets.to_s.strip

    puts "#{nome} vamos lá guerreiros" 
  end


  def executar
    opcao = 0

    while opcao != 4 do
      puts "Digite uma das seguintes opções"
      puts "1 - CALCULAR TABUADA"
      puts "2 - CONCATENAR NOME"
      puts "3 - CALCULAR TABUADA E CONCATENAR NOME"
      puts "4 - SAIR DO PROGRAMA"

      opcao = gets.to_i
      case opcao
      when 1
        calcular_tabuada
      when 2
        concatenar_nome
      when 3
        calcular_tabuada
        concatenar_nome
      when 4
        break
        else
          puts "Opção invalida"
        end
      end
  end
end

tab = Tabuada.new
tab.executar

tab2 = Tabuada.new
tab2.executar

tab3 = Tabuada.new
tab3.executar

tab4 = Tabuada.new
tab4.executar


