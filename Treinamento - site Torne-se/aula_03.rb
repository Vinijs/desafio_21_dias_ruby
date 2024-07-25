# require 'byebug'
# debugger

# h = {}
# puts "string".class
# puts 1.class
# puts 1.class.superclass
# puts 1.class.superclass.superclass
# puts 4.3.class
# puts 4.3.class.superclass
# puts nil.class
# puts h.class
# puts :symbol.class
# puts [].class
# puts (1..8).class


# @@a = 1

A = 4

class Teste
  # def initialize
  #   @a = 4
  # end

  

  def a
    A
  end
end

puts Teste.new.a

# def teste
#   puts @@a
# end

# teste

# @a = 2
# puts @a

# @@a = 3
# puts @@a

# $a = 4
# puts $a

# A = 5
# puts A
