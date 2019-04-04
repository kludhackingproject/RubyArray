def signup
  puts "entrer mot de passe"
  print ">"
  mot_de_passe = gets.chomp
  return mot_de_passe
end

def login
  puts "Met ton mot de passe pour accéder à la page :"
  print ">"
  mot_de_passe_2 = gets.chomp
  return mot_de_passe_2
end

def compare(mot_de_passe, mot_de_passe_2)
  if mot_de_passe == mot_de_passe_2
    puts "Tu es sur le site de la NASA"
  else
    puts "Mauvais MDP"
  end
end

def perform
  mot_de_passe = signup
  mot_de_passe_2 = login
  compare(mot_de_passe, mot_de_passe)
end

perform
