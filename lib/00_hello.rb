############ Partie 1 ###############

# def say_hello
#   first_name = "Ilhem"
#   puts "Bonjour #{first_name}"
# end
# say_hello

############ Partie 2 ###############

# def ask_first_name
#   puts "Quel est ton prénom?"
#   print "> "
#   first_name = gets.chomp
#   puts "Bonjour #{first_name}"
# end
#
# ask_first_name

############ Partie 3 ###############

def ask_first_name
  puts "Quel est ton prénom?"
  print "> "
  first_name = gets.chomp  # on introduit le prénom
  return first_name
end

def say_hello(first_name)
  puts "Bonjour #{first_name}" # affichage de Bonjour avec le prénom introduit
end

def perform
  first_name = ask_first_name
  say_hello(first_name)
end

perform
