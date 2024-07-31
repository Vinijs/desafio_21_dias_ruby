# Luciano Hang é um empresário do varejo
# O mesmo tem uma empresa chamada Havan e pretende 25 mil pessoas
# e ele está querendo vacinar os seus colaboradores
# faça um programa que tenha as caracteristicas de um 
# colaborador (nome, sobrenome, cpf)
# e coloque uma opção neste colaborador marcando se ele
# já tomou ou não a vacina
# Ter um item de consulta para saber se aquele CPF foi vacinado
# passos:
# 1 = cadastrar, porém antes do cadastro, verificar se o CPF já foi vacinado
# Se o cpf já foi vacinado, mostrar a mensagem o colaborador já tomou a primeira dose
# Se não pedir os outros dados do cadastro do colaborador

class Colaborador
  attr_accessor :nome, :sobrenome, :cpf, :vacinado

  def TomouVacina
    @vacinado = true
  end

end

funcionario = Colaborador.new

  def CadastrarColaborador
    puts "===========CONTROLE DE VACINAÇÃO - HAVAN========"
    puts "Informe o nome do colaborador"
    funcionario.nome = gets

    puts "Informe o sobrenome do colaborador"
    funcionario.sobrenome = gets

    puts "Informe o CPF do colaborador (digite apenas numeros)"
    funcionario.cpf = gets.to_i

    funcionario.TomouVacina
  end

  puts "===========CONTROLE DE VACINAÇÃO - HAVAN========"
  puts "SELECIONE A OPÇÃO DESEJADA"
  puts "1 - CADASTRAR VACINA COLABORADOR"
  puts "2 - CONSULTAR SE COLABORADOR JÁ FOI VACINADO"
  puts "3 - SAIR DO SISTEMA"
  opcao = gets_to_i 

while opcao == 3

  case 1

  

  cpf_vacinado = 0

  
end

  

