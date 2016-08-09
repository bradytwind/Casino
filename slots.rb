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

slot = Slots.new
slot.slot_machine

class HighLow

highlow = [1..10]

  def high_low
    puts "Welcome to High Low. Good luck!"
    #add instructions on each game (method with puts)
    puts "Press 1 to get the number, or 2 to go back to the Casino Menu"
    puts "-->"
    the_number = gets.chomp
    case the_number
    when "1"
      puts highlow.sample
    when "2"
      #take back to casino menu
    else
      puts "Invalid entry, please enter 1 or 2"
      exit 0
    end
  end
end



class RussianRoulette

  def russian_roulette
    puts "Welcome to Russian Roulette. The game with the highest"
  end
end



class War
end
Contact GitHub API Training Shop Blog About
