class Card
 # Getter and Setter methods for rank, suit and color
 attr_accessor :rank, :suit, :color
 # Gets called when you call the new method to create an instance
 # card = Card.new('10', 'K', 'Black')
 def initialize(rank, suit, color)
   @rank = rank
   @suit = suit
   @color = color
 end
end

class Deck
 # Getter and Setter methods for rank, suit and color
 attr_accessor :cards

 # Gets called when you call the new method to create an instance
 # deck = Deck.new
 def initialize
   @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
   @suits = %w(Spades Diamonds Clubs Hearts)
   @cards = []
   generate_deck
 end
 
 def generate_deck
   @suits.each do |suit|
     @ranks.size.times do |i|
       # Ternary Operator
       color = (i % 2 == 0) ? 'Black' : 'Red' 
       @cards << Card.new(@ranks[i], suit, color)
     end
   end
 end
end

class Dice
 def initialize
   roll
 end
 
 def roll
   @die1 = 1 + rand(6)
   @die2 = 1 + rand(6) 
 end
 
 def show_dice
   print "Die1: ", @die1, " Die2:", @die2
 end
 
 def show_sum
   print "Sum of dice is ", @die1 + @die2, ".\n"
   end 
end