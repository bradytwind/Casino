class Player
  attr_accessor :name
  def initialize(name)
    @name = name
    puts "Created a new Player #{@name}"
  #setup instance varieable
  #by getting user input
  # like name, age, wallet amount
  end
end

class WalletAmount
  attr_accessor :money
  def initialize(money)
    @money = money
    puts "You have $#{@money} in your wallet!"
  end
end


# player1 = Player.new("Brady")
# player1.name

# wallet1 = WalletAmount.new(100)
# wallet1.money
#