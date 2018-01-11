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
    puts "YOU vs COMPUTER... GOOD LUCK!".cyan
    sleep(2)
    Game.new(Players::Human.new("X"), Players::Computer.new("O")).play
  end

  def player_vs_player
    self.mode = "valid"
    puts "COMPUTER vs COMPUTER... GAME STARTING IN 3..2..1!".cyan
    sleep(2)
    Game.new(Players::Computer.new("X"), Players::Computer.new("O")).play
  end
#==============================================
end
