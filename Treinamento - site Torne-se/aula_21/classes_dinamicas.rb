require 'byebug'

# Definir várias classes em runtime
def definir_classe(classe)
  classe = classe.capitalize
  eval("class #{classe} end")
  # classe = Object.cons_get(classe)
end

["Classe1", "classe2", "Classe3"].each do |classe|
  definir_classe(classe)
end

debugger

x = ""