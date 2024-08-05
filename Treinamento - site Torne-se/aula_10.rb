require 'byebug'

#@i = 1
def captura_servico(i=1)
  # debugger
  #TODOO: capturar dados do serviço: http://localhost:3000/usuarios.json
  puts "Implementar o dado para buscar da API #{i}"
  #@i += 1
  return if i == 3
  captura_servico(i+1)
end


captura_servico