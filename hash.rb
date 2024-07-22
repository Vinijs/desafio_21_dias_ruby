# Roberto é dono de uma faculdade, ele irá precisar organizar a grade
# do curso em alguns meses faça um programa que organize os dados do
#   semestre da faculdade do Roberto o que teremos nesta organização,
# "nome da matéria", "temas até o mês 6" colocar nesta estrutura pelo menos
# 3 matérias

grade = [ 
{
  nome: "matemática",
  meses: [
    "Mes 1 - Titulo 1",
    "Mes 2 - Titulo 2",
    "Mes 3 - Titulo 3",
    "Mes 4 - Titulo 4",
    "Mes 5 - Titulo 5",
    "Mes 6 - Titulo 6",
  ]
},

{
  nome: "português",
  meses: [
    "Mes 1 - Titulo 1",
    "Mes 2 - Titulo 2",
    "Mes 3 - Titulo 3",
    "Mes 4 - Titulo 4",
    "Mes 5 - Titulo 5",
    "Mes 6 - Titulo 6",
  ]
},

{
  nome: "ciência",
  meses: [
    "Mes 1 - Titulo 1",
    "Mes 2 - Titulo 2",
    "Mes 3 - Titulo 3",
    "Mes 4 - Titulo 4",
    "Mes 5 - Titulo 5",
    "Mes 6 - Titulo 6",
  ]
}
]

grade.each do |g|
  puts "Nome da matéria: #{g[:nome]}"
  puts "Titulo e meses: #{g[:meses].join(", ")}"
end
