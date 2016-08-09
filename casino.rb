#this pulls in the player class from the other file, not caps since its pulling the file itself
#require_relative 'wallet' ??


class Casino
 #make sure you use attr_accessor
 attr_accessor :player
 def initialize
   puts "Welcome to the Casino!"
   # For now, just one player
   # Should allow as many players
   # Should Switch between players
   @player = Player.new
 end

end

Casino.new

casino = gets.chomp

case casino
  when "1"
    #option 1 slots
    slot_machine()
  when "2"
    #option 2 highlow
    highlow
  when "3"
    #option 3 russian roulette
    russian_roulette
  when "4"
    #option 4 war
    War
  when "5"
    puts "Thanks for playing, your total amount is #{amount}"
    exit 0
  else
    puts "Invalid option, please select 1-5"
end