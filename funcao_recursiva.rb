require 'byebug'

debugger

def mostrar_na_tela(numero)
  a = "#{numero} - passado"
  puts a
  mostrar_na_tela(numero + 1) if numero < 10
end

mostrar_na_tela(1)