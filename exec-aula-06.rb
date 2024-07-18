# Danilo é o Fundador do torne-se um programador
# Ele precisa calcular a satisfação de seus alunos
# Faça um programa que calcule o NPS do seu negócio


notas = []
pesquisa = true

while pesquisa do
  puts "========================================================================"
  puts "   Pesquisa de satisfação Tornese um programador"
  puts "========================================================================"
  puts "De uma escala de 0 a 10 qual sua nota em relação ao conteúdo da Comunidade?"
  nota = gets.to_f

  if(nota > 10)
    puts "Nota inválida"
    return
  end

  break if nota == -1

  notas << nota
  end

  puts "O seu NPS foi de : #{(notas.sum / notas.length)}"