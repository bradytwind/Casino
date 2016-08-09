#this pulls in the player class from the other file, not caps since its pulling the file itself
#require_relative 'wallet' ??
require_relative './player'
require_relative './all_games'

class Intro
  def initialize
   @intro = intro
  end
end

def casino
  
  puts "Welcome to the Casino!"
  puts "Please enter your name"
  player = gets.chomp
  if player.downcase == "exit"
    puts "Have a great day"
    exit 0
  else
    puts "Please enter in the amount of money you brought with you"
    wallet = gets.chomp.to_i
    
    # For now, just one player
    # Should allow as many players
    # Should Switch between players
    @player = Player.new(player)
    player = @player.name
    @wallet = WalletAmount.new(wallet)
    wallet = @wallet.money
  end
end

casino


def casino_menu
  puts "You're name is #{@player.name} and you have #{@wallet.money} in your wallet."
  puts "Please select 1 - 5 from our list of games"
  puts "1. Slots"
  puts "2. Hi-Lo"
  puts "3. War"
  puts "4. Russian roulette"
puts "5. Exit the casino"
end

casino_menu

main_menu = gets.chomp



case main_menu
  when "1"
    #option 1 slots
    slot = Slots.new
    slot.slot_machine

  when "2"
    #option 2 highlow
    highlow
  when "3"
    #option 3 russian roulette
    war
  when "4"
    #option 4 war
    rush = RussianRoulette.new
    rush.russian_roulette
  when "5"
    puts "Thanks for playing, your total amount is #{@wallet.money}"
    exit 0
  else
    puts "Invalid option, please select 1-5"
    main_menu
  end

