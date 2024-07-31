class Aluno
  attr_accessor :nome, :matricula, :notas

  def estudar
    puts "Nome: #{self.nome}"
    puts "Matricula: #{@matricula}"
    puts "Notas: #{@notas}"
  end
end


edilson = Aluno.new
edilson.nome = "Edilson Soares"
edilson.matricula = "00578"
edilson.notas = [8,7,9]
edilson.estudar

puts "====================================="

debora = Aluno.new
debora.nome = "Debora Soares"
debora.matricula = "00568"
debora.notas = [6,7,10]
debora.estudar

puts "====================================="