require 'byebug'

# debugger

# def calcula_soma(*numeros)

#   somatoria = 1
#   numeros.each do |numero|
#     somatoria *= numero
#   end

#   a = 1 + somatoria

#   return 1 if a > 10

#   a += 2

#   return a
# end

# puts "Digite um numero"
# num = gets.to_i

# a = "danilo"
# b = "rosi"
# c = 1
# d = "Estamos em aula"
# e = false
# f = 1.5

# puts "O retorno é: #{calcula_soma(2,3,4,5,7,8)}"
# puts "O retorno é: #{calcula_soma(7,8)}"
# puts "O retorno é: #{calcula_soma(2)}"

def mostrar_na_tela(param)
  puts "#{param} - Na aula do torne-se um programador"
end

mostrar_na_tela('Danilo')