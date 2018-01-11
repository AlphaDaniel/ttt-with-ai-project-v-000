module Modes
#=================properties===================
  attr_accessor :mode
#==============================================
  def spectator
    self.mode = "valid"
    puts "COMPUTER vs COMPUTER... GAME STARTING IN 3..2..1!".cyan
    sleep(2)
    Game.new(Players::Computer.new("X"), Players::Computer.new("O")).play
  end

  def vs_computer
    self.mode = "valid"
    puts "YOU vs COMPUTER... WOULD YOU LIKE TO GO FIRST?".cyan
    puts "Enter (y/n)".green
    ans = gets.strip
    puts "GAME STARTING... GOOD LUCK!".cyan
    sleep(2)
    # ans == "y" ? Game.new(Players::Human.new("X"), Players::Computer.new("O")).play :
    # Game.new(Players::Computer.new("O"), Players::Human.new("X")).play
    case ans
    when "y"
      Game.new(Players::Human.new("X"), Players::Computer.new("O")).play
    when "n"
      Game.new(Players::Computer.new("O"), Players::Human.new("X")).play
    when !"y" || !"n"
      first_error!
    end

    def first_error!
      puts "\n Invalid Entry Please Enter y or n \n".colorize(color: :white, background: :red)
      sleep(0.3)
      self.vs_computer
    end


  end

  def player_vs_player
    self.mode = "valid"
    puts "PLAYER vs PLAYER... MAY THE BEST MAN WIN!".cyan
    sleep(2.5)
    Game.new.play
  end

  def mode_error!
    puts "\n Invalid Entry Please Enter 0, 1, or 2 \n".colorize(color: :white, background: :red)
    sleep(0.3)
    self.start
  end
#==============================================
end
