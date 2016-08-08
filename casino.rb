#this pulls in the player class from the other file, not caps since its pulling the file itself
#require_relative 'wallet' ??


class Casino
 #make sure you use attr_accessor
 attr_accessor :player
 def initiatlize
   puts "Welcome to the Casino!"
   # For now, just one player
   # Should allow as many players
   # Should Switch between players
   @player = Player.new
 end

end

Casino.new