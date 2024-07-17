# Dado que eu tenha algumas opções
# - Banana
# - Maça
# - Laranja
# e digite algum dos items listados acima
# ao escolher coloque um valor diferente para cada fruta , este valor estará no bloco
# selecionado no final do programa mostre o valor de acordo com a escolha da fruta.

puts "=========== QUITANDA TORNE-SE ====================="
puts "| Escolha a fruta que você deseja                 |"
puts "| 1 - BANANA                                      |"
puts "| 2 - MAÇA                                        |"
puts "| 3 - LARANJA                                     |"
puts "| Outra Tecla - opção inválida                    |"
puts "==================================================="
opcao_fruta = gets.to_i

valor_fruta = 0.0

nome_fruta = nil

case opcao_fruta
when 1
  nome_fruta = "BANANA"
  valor_fruta = 2.0
when 2
  nome_fruta = "MAÇA"
  valor_fruta = 4.0
when 3
  nome_fruta = "LARANJA"
  valor_fruta = 5.0
else
  nome_fruta = "OPÇÃO INVALIDA"
  valor_fruta = 0.0
end

puts "==============================================="
puts "A fruta selecionada pelo cliente foi: #{nome_fruta}"
puts "Valor a ser pago pela fruta escolhida: #{valor_fruta}"
puts "==============================================="
