############ Partie 1 ###############

# brick = "#"
# space = " "
# n = 1
#
# puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
# print "> "
# number = gets.chomp.to_i
#
# y = number
#
# while n <= number
#   y.times do
#       print space
#   end
#
#   n.times do
#     print brick
#   end
#
#   print ("\n")
#   y -= 1
#   n += 2
# end

############ Partie 2 ###############

def ask_number
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  print "> "
  number = gets.chomp.to_i
  return number
end

def pyramide_up (number)
  brick = "#"
  space = " "
  n = 1

  y = number/2

  while n < number
    y.times do
        print space
    end

    n.times do
      print brick
    end

    print ("\n")
    y -= 1
    n += 2
  end
end

def pyramide_down (number)
  brick = "#"
  space = " "
  n = 0
  
  y = number

  while n < number
    n.times do
      print space
    end

    y.times do
      print brick
    end

    print ("\n")
    y -= 2
    n += 1
  end
end

def perform
  number = ask_number
  pyramide_up (number)
  pyramide_down (number)
end

perform
