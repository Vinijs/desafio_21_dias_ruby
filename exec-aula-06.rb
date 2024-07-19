# Danilo é o Fundador do torne-se um programador
# Ele precisa calcular a satisfação de seus alunos
# Faça um programa que calcule o NPS do seu negócio


notas = []
pesquisa = true

data_encerramento = Time.now + 60

puts data_encerramento

puts Time.now

while Time.now < data_encerramento do
  puts "========================================================================"
  puts "   Pesquisa de satisfação Tornese um programador"
  puts "========================================================================"
  puts "De uma escala de 0 a 10 qual sua nota em relação ao conteúdo da Comunidade?"
  nota = gets.to_f

  #puts "A pesquisa vaiser encerrada as: #{data_encerramento.strftime("%d/%m/%Y %H:%M")}"
  if data_encerramento < Time.now
    puts "A pesquisa irá se encerrar em: #{Time.at((data_encerramento - Time.now)).strftime("%M:%S")}"
  else
    puts "A pesquisa se encerrou"
  end



  #break if nota == -1

  if(nota > 10)
    puts "Nota inválida"
    next
  end

  

  notas << nota
  
  end

    puts "O seu NPS foi de : #{(notas.sum / notas.length)}"
