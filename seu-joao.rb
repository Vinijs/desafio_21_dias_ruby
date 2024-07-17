# Seu joão é um comerciante e ele precisa de um software que faça o calculo da porcentagem
# de desconto que ele dará para os seus clientes no valor total da compra, faça um software
# que solicite o valor total do pedido, solicite o valor da porcentagem e logo após mostre o
# valor com desconto e o valor descontado


# mudar o sistema para que ele pergunte qual o produto que o cliente pegou
# e o valor total deste produto
# Se o valor total descontado der inferior a 10 reais oferecer um produto a mais no pedido
# perguntar o nome deste produto e o valor deste produto.

# O desconto de x% será dado no valor total com os itens

# João ficará MUITO feliz se vc resolver o problema dele.

# require 'byebug'

system 'clear'
# debugger
puts "Olá seu João tudo bem?\nVamos fazer o pedido do seu cliente"

puts "Informe o nome do seu cliente: "
cliente_nome = gets.to_s.strip

puts "Informe o nome do produto: "
produto_nome = gets.to_s.strip

puts "Digite o valor do produto #{produto_nome} R$: "
valor_pedido = gets.to_f

if valor_pedido < 10
    puts "Olá #{cliente_nome}, você gostaria de incluir mais um item em seu pedido, 
    se fizer isso você poderá receber um desconto maior no valor total (S/N)"
    decisao_do_cliente = gets
    if decisao_do_cliente.to_s.upcase.strip == "S"
        puts "Informe o nome do produto: "
            produto_nome_item = gets.to_s
            
            puts "Digite o valor total do produto #{produto_nome_item} "
            valor_pedido_item = gets.to_f

            valor_pedido = valor_pedido + valor_pedido_item
    end
end

# digitar o nome do produto e o valor do produto
# verificar se o valor é inferior a 10 se sim rodar a regra de acrescentar um novo produto

# pedir a porcentagem de desconto

puts "Digite a porcentagem a ser dada perante o valor total do pedido"
porcentagem = gets.to_i

valor_porcentagem = valor_pedido * porcentagem/100

valor_total = valor_pedido - valor_porcentagem
acrescimo_no_valor = 0



valor_total += acrescimo_no_valor

# Mostrar um resumo detalhado de tudo que aconteceu aqui, com nomes e valores de produtos

puts "Opa seu João o pedido do cliente #{cliente_nome} deu:"
puts "============================================================"
puts "O produto escolhido pelo cliente foi #{produto_nome} no valor de R$ #{valor_pedido}"
if decisao_do_cliente.to_s.upcase.strip == "S"
    puts "O item a mais selecionado pelo cliente foi o #{produto_nome_item} no valor de #{valor_pedido_item} "
end
puts "============================================================"

puts "O valor total do pedido foi R$ #{valor_pedido}"
puts "A porcentagem de desconto foi #{porcentagem} %"
if acrescimo_no_valor > 0
    puts "========================================================"
    puts "O item a mais incluido tem o valor de R$ #{acrescimo_no_valor}"
    puts "========================================================"
end
puts "========================================================"
puts "O valor a ser descontado de acordo com a porcentagem é R$ #{valor_porcentagem}"
puts "========================================================"
puts "========================================================"
puts "O valor a ser pago pelo pedido é R$ #{valor_total}"
puts "========================================================"