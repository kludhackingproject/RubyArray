def signup
  puts "Entre ton mot de passe"
  print ">"
  password = gets.chomp
  return password
end

def login
  puts "Met ton mot de passe pour accéder à la page :"
  print ">"
  password_2 = gets.chomp
  return password_2
end

def welcome_screen(password, password_2)
  if password == password_2
    puts "Tu es sur le site de la NASA"
  else
    puts "Mauvais MDP"
  end
end

def perform
  password = signup
  password_2 = login
  welcome_screen(password, password_2)
end

perform
