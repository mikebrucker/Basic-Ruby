$game_running = true

def fall_into_sewer()
    puts $name + ', you fell down a sewer infested with alligators. You need to get out. Do you go left or do you go right? (type left or right)'
        choice = gets.chomp.downcase
    if choice == 'left'
        wrestle_or_run()
    elsif choice == 'right'
        walk_100_feet()
    else
        fall_into_sewer()
    end
end

def wrestle_or_run()
    puts "An alligator is right there. Do you wrestle it or do you run the other way? (wrestle or run)"
    choice = gets.chomp.downcase
    if choice == 'wrestle'
        puts 'Why would you wrestle an aligator' + $name + ' in a sewer. It eats you'
        $game_running = false
    elsif choice == 'run'
        puts "It catches you and eats you"
        $game_running = false
    else
        wrestle_or_run()
    end
end

def walk_100_feet()
    puts "You walk about 100 feet thru shit when the sewer forks left and right. (type left or right)"
    choice = gets.chomp.downcase
    if choice == 'left'
        turtle_quest()
    elsif choice == 'right'
        turtle_help_escape()
    else
        walk_100_feet()
    end
end

def turtle_quest()
    puts "You meet three of the four ninja turtles, Slippery, Goobles, and Platypus. They have a quest for you find their golden pizza statue. Do you accept? (yes or no)"
    choice = gets.chomp.downcase
    if choice == 'yes'
        hamster_quest()
    elsif choice == 'no'
        puts "Bro we'll just kill you. They kill you"
        $game_running = false
    else
        turtle_quest()
    end
end

def turtle_quest_again()
    puts 'Slippery, Goobles, and Platypus stop you. "Hey motherFucker go get our statue!" No matter what you say they force you to go'
    choice = gets.chomp.downcase
    if choice.length > -1
        hamster_quest()
    end
end

def turtle_help_escape()
    puts "You meet one of the four ninja tutles, Turd. Turd says \"I saw you fall in here. Whats your name? (Do you tell him? yes or no)"
    choice = gets.chomp.downcase
    if choice == 'no'
        puts "Turd says, \"Well fuck you than,\" and he chops your head off."
        $game_running = false
    elsif choice == 'yes'
        told_turtle_name()
    end
end

def hamster_quest()
    puts 'You run into a hamster fortress. Three armored hamsters come out to challenge you. Do you fist fight them? Use magic? or do you try to run past them? (fist, magic, run)'
    choice = gets.chomp.downcase
    if choice == 'fist'
        puts 'They slice you in half with their hamster swords'        
        $game_running = false
    elsif choice == 'magic'
        puts "You don't know magic,  . They slice you in half with their hamster swords"
        $game_running = false
    elsif choice == 'run'
        turtle_quest_again()
    else
        hamster_quest()
    end
end

def told_turtle_name()
    puts 'Ok ' + $name + ', first we got to kill my brothers. Are you ready? (yes or no?)'
    choice = gets.chomp.downcase
    if choice == 'yes'
        puts "Good shit brother let's go"
        fight_turtles()
    else 
        puts "Too bad we're going"
        fight_turtles_prompt()
    end
end

def fight_turtles_prompt()
    choice = gets.chomp.downcase
    if choice.length > -1
        last_words()
    end
end

def last_words()
    puts "Those are your last words? Wow Ok"
    fight_turtles()
end

def fight_turtles()
    puts "You'll attack one and I'll take the other 2. Who do you want to try and kill? Slippery, Goobles, or Platypus?"
    choice = gets.chomp.downcase
    if choice == 'slippery'
        puts 'Slippery grabs your head and rips it clean off.'
        $game_running = false
    elsif choice == 'goobles'
        puts 'Goobles gobbles you whole.'
        $game_running = false
    elsif choice == 'platypus'
        killed_platypus()
    else 
        fight_turtles()
    end
end

def killed_platypus()
    puts "Platypus is apparently scared of the color bright blue and you just happen to be wearing a bright blue shirt. You choke him to death. Turd says \"Thanks for helping me kill those pieces of shit. If you want to escape I can hoist you through the manhole cover above us.  If you want to help me kill those hamster assholes too say the word.\" (leave or stay)"
    choice = gets.chomp.downcase
    if choice == 'leave'
        puts 'Turd helps you to the surface. You are finally free'
        $game_running = false
    elsif choice == 'stay'
        attack_hamsters()
    else
        killed_platypus()
    end
end

def attack_hamsters()
    puts "You travel beyond the Ninja Turtle camp and to the Hamster Fortress. Three armored hamsters show up. Do you fist fight them? Use your magic powers? Or do you let Turd do all the work? (fist, magic, turd)"
    choice = gets.chomp.downcase
    if choice == 'fist'
        puts 'They slice you in half with their hamster swords'        
        $game_running = false
    elsif choice == 'magic'
        puts "You don't know magic,  . They slice you in half with their hamster swords"
        $game_running = false
    elsif choice == 'turd'
        puts 'he does it'
    else
        attack_hamsters()
    end
end        

while $game_running == true
    puts 'Enter Name'
    choice = gets.chomp
    $name = choice
    puts 'Ok ' + $name + ', type start'
    choice = gets.chomp.downcase
    if choice == 'start'
        fall_into_sewer()
    end
end