class Player
  attr_accessor :name, :wallet
  def initialize(name, wallet)
    @name = name
    @wallet = Wallet.new(wallet)
    puts "Created a new Player #{@name}"
  #setup instance varieable
  #by getting user input
  # like name, age, wallet amount
  end
end

class Wallet
  attr_accessor :total
  def initialize(total)
    @total = total
    puts "You have $#{@total} in your wallet!"
  end
end


# player1 = Player.new("Brady")
# player1.name

# wallet1 = WalletAmount.new(100)
# wallet1.money
#