require 'pry'
class Slots

  def initialize(player)
    @player = player
    @slots = [["Bar", "7", "Cherry"],
             ["7", "Cherry", "Bar"],
             ["Cherry", "Bar", "7"]]
  end
  
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
        else 
          puts "Sorry, try again!"
        end
      when "2"
         intro = Intro.new
        
        intro.casino_menu(@player)
      else
        puts "Invalid selection!"
        slot_machine
    end
  end
end

# slot = Slots.new
# slot.slot_machine



class HighLow
  def initialize(player)
    @player = player
    @highlow = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
  end
        
  def high_low
    
    puts "Welcome to High Low. Good luck!"
    #add instructions on each game (method with puts)
    puts "Press 1 to get the number, or 2 to go back to the Casino Menu"
    print "-->"
    the_number = gets.chomp
    case the_number
      when "1"
        @draw1 = @highlow.sample
        @draw2 = @highlow.sample 

        puts "The card is: #{@draw1}. Will the next card be higher or lower?"
        puts "Type High or Low"
        puts "-->"
        guess = gets.chomp.downcase
        case guess
          when guess == "high" && @draw1 > @draw2
          puts "Congratulations #{@player.name}, you won $2!"
          @player.wallet.total = @player.wallet.total += 2
          when guess == "low" && @draw1 < @draw2
          puts "Congratulations #{@player.name}, you won $2!"
          @player.wallet.total = @player.wallet.total += 2  
          else
          puts "You lose. Thanks for the $2."
          @player.wallet.total = @player.wallet.total -= 2

          high_low
        end 
      when "2"
        intro = Intro.new
        intro.casino_menu(@player)
      else
        puts "Invalid entry, please enter 1 or 2"
        high_low

    end
  end
end


# class War
#   def initialize(player)
#     @player = player
#   end
#   def war_game
#     puts "Welcome to War. Press 1 to place your bet and deal."
#     print "-->"
#     case hit_me_baby
#       when "1"
#         house1 = @genereate_deck
#         player1 = @generate_deck
#       when "2"
        
#         intro = Intro.new
#         intro.casino_menu(@player)
#       else
#         puts "Invalid entry, please enter 1 or 2"
#         exit (0)
#     end
#   end
# end



class RussianRoulette

  # attr_accessor :game, :bullets
  def initialize(player)
    @player = player
    # @game = game
    @bullets = ["1", "2", "3", "4", "5", "6"]
  end
  
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
          puts "...Click..."
          puts "Congratulations #{@player.name}, you won $10!"
          @player.wallet.total = @player.wallet.total += 10
          russian_roulette
        end
      when "2"
        # require_relative './casino'
        intro = Intro.new
        
        intro.casino_menu(@player)
      else
        puts "Invalid entry, must enter 1 or 2"
        russian_roulette
    end
    # roulette = RussianRoulette.new
    # roulette.russian_roulette
  end
end
