# Danilo é um dos professores do torne-se um programador
# Para fixar o conteudo de orientação a objetos, solicita =uma
# classe onde terá algumas propriedades e métodos

# classe Animal
# propriedades e métodos
# nome, raça, tamanho, velocidade, correr, andar, cor, falar, idade, relacionar,
# todos_os_animais, buscar_animal_por_id, buscar_animal_por_nome

# Obs:
# Não precisa desenvolver tela, seja simples ... quero só a classe

# ===============================================================================

# Para usar esta classe crie algumas instancias
# nomes:
# leao, cachorro, gato, pato

# utilize os métodos de instancia criado neste exemplo


# Utilize as funções de classe para buscar os animais, 
# obs: não precisa ter o código que busca em memória
# quero somente validar o uso da classe.

# salvar_lista_de_animais

animais = []

class Animal

  attr_accessor :id, :nome, :raca, :tamanho, :velocidade, :cor, :idade

  def correr

  end

  def andar

  end

  def falar

  end

  def relacionar

  end

  def self.todos_os_animais

  end

  def self.buscar_animal_por_id(id)

  end

  def self.buscar_animal_por_nome(nome)

  end

  def self.salvar_lista(*animais)

  end

end

leao = Animal.new
leao.id = 1
leao.nome = "Leão"
leao.raca = "Felino"
leao.tamanho = 1.90
leao.velocidade = 50
leao.cor = "Marrom"
leao.idade = 15
leao.correr
leao.andar
leao.falar
leao.relacionar

cachorro = Animal.new
cachorro.id = 2
cachorro.nome = "Cachorro"
cachorro.raca = "Canino"
cachorro.tamanho = 1,50
cachorro.velocidade = 10
cachorro.cor = "Preto"
cachorro.idade = 9
cacnhorro.correr
cacnhorro.andar
cacnhorro.falar
cacnhorro.relacionar

gato = Animal.new
gato.id = 3
gato.nome = "Gato"
gato.raca = "Felino"
gato.tamanho = 1.00
gato.velocidade = 20
gato.cor = "Cinza"
gato.idade = 6
gato.correr
gato.andar
gato.falar
gato.relacionar

pato = Animal.new
pato.id = 4
pato.nome = "Pato"
pato.raca = "Ave"
pato.tamanho = 0.50
pato.velocidade = 3
pato.cor = "Branco"
pato.idade = 4
pato.correr
pato.andar
pato.falar
pato.relacionar

Animal.todos_os_animais

Animal.buscar_animal_por_id(2)

Animal.buscar_animal_por_nome("Pato")

Animal.salvar_lista(leao,cachorro,gato,pato)
