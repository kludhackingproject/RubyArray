def signup
  puts "Entre ton mot de passe" # il faut rentrer le mot de passe lors de l'inscription
  print ">"
  password = gets.chomp
  return password
end

def login
  puts "Met ton mot de passe pour accéder à la page :" # il faut remettre le mot de passe pour se connecter
  print ">"
  password_2 = gets.chomp
  return password_2
end

def welcome_screen(password, password_2) # on va comparer les deux mots de passe
  if password == password_2
    puts "Tu es sur le site de la NASA" # si les deux mots de passe sont identiques, le msg sur la NASA s'affiche
  else
    puts "Mauvais MDP" # sinon si les deux mot de passe ne sont pas identiques, mauvais MDP s'affiche.
  end
end

def perform
  password = signup
  password_2 = login
  welcome_screen(password, password_2)
end

perform
