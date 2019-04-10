#
######################## Jeu vidéo ##################################

def hazard
  current_step = 0

  while current_step != 10
    number = rand(1..6)
    if number == 5 || number == 6
      current_step += 1
      puts "Tu avances d'une marche :). Tu es à la #{current_step} marche."
      print ("\n")
    elsif number == 1
      current_step -= 1
      puts "Tu descends d'une marche :(. Tu es à la #{current_step} marche."
      print ("\n")
    else number == 2 || number == 3 || number == 4
      puts "Tu ne bouges pas :|. Tu es à la #{current_step} marche."
      print ("\n")
    end
  end

end

def result
  puts "Bravo tu as atteint la 10ème marche !"
end

def perform
  hazard
  result
end

perform

####################### Statistiques #################################

def array_stat(total_die_roll)
  game_number = 0 # Valeur indiquant le nombre de parties
  total_die_roll = 0 # Valeur du total des lancés sur 100 parties

  # Boucle qui permet de parcourir les 100 parties
  while game_number <= 100
    step_number = 0 # Valeur des marches
    die_roll_one_game = 0 # Valeur total des lancés de dés pour une partie

    # Boucle qui permet de parcourir chaque jeu
    while step_number != 10
      # Attribue un nombre aléatoire à number
      number = rand(1..6)
      # Résultat du nombre de marche
      if number == 5 || number == 6
        step_number += 1
      elsif number == 1
        step_number -= 1
      else number == 2 || number == 3 || number == 4
      end
      die_roll_one_game += 1
    end
    game_number += 1

    # On fait la somme de l'ancienne valeure de lancé de dés dans une partie avec la valeur de la nouvelle partie et
    # ainsi de suite jusqu'à atteindre les 100 parties
    total_die_roll = die_roll_one_game + total_die_roll
  end
  return total_die_roll
end

def print_stat(total_die_roll)
    puts "Le nombre moyen de lancé de dés pour atteindre 10 marches est de #{total_die_roll/100} sur 100 parties."
end


def perform
  total_die_roll = array_stat(total_die_roll)
  print_stat(total_die_roll)
end

perform
