class Slots
@slots = [["Bar", "7", "Cherry"],
        ["7", "Cherry", "Bar"],
        ["Cherry", "Bar", "7"]]

  def slot_machine
    puts "Welcome to the slot machine. Good luck!"
    puts "Press 1 to spin the slot or 2 to go back to the Casino Menu"
    print "-->"
    slot_pull = gets.chomp
    case slot_pull
      when "1"
        puts @slots[0].sample
        puts @slots[1].sample
        puts @slots[2].sample
        if @slots[0] == @slots[1] && @slots[1] == @slots[2]
          puts "Winner!"
        end
      when "2"
        #take back to casin menu
      else
        puts "Invalid selection!"
        exit
    end
  end
end

# slot = Slots.new
# slot.slot_machine



class HighLow
highlow = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'Ace']

  def high_low
    puts "Welcome to High Low. Good luck!"
    #add instructions on each game (method with puts)
    puts "Press 1 to get the number, or 2 to go back to the Casino Menu"
    print "-->"
    the_number = gets.chomp
    case the_number
      when "1"
        puts highlow.sample
      when "2"
        #take back to casino menu
      else
        puts "Invalid entry, please enter 1 or 2"
        high_low
    end
  end
end



class War
  def war_game
    puts "Welcome to War. Press 1 to place your bet and deal."
    print "-->"
    case hit_me_baby
      when "1"
        house1 = @genereate_deck
        player1 = @generate_deck
      when "2"
        war_game
        @casino
      else
        puts "Invalid entry, please enter 1 or 2"
        exit (0)
    end
  end
end



class RussianRoulette
require_relative './casino'

@bullets = ["1", "2", "3", "4", "5", "6"]

  def russian_roulette
    puts "Welcome to Russian Roulette. The game with the highest of stakes..."
    puts "Press 1 to place your bet and pull the trigger."
    puts "Press 2 to go safely back to the Casino Menu"
    print "-->"
    pull_trigger = gets.chomp
    case pull_trigger
      when "1"
        puts "..."
        sleep(1)
        @chamber = @bullets.sample
        if @bullets.last == @chamber
          puts "BANG!!"
          sleep(1)
          puts " --thud-- "
          sleep(1)
          puts "Hmm. Looks like you died and lost all of your money. So sorry for your misfortune."
          puts ""
          sleep(1)
          puts "Worry not - as a token of good humanity, we will donate $10 to your family \nto help with this inconvenience"
          sleep(2)
          exit (0)
        else
          puts "...Click"
          puts "Congratulations #{@name}, you won $X! To go again press 1. To leave press 2"
          russian_roulette
        end
      when "2"
        russian_roulette
      else
        puts "Invalid entry, must enter 1 or 2"
        russian_roulette
    end
  end
end
