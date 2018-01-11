module Modes
#=================properties===================
  attr_accessor :mode
#==============================================
  def Spectator
    self.mode = "valid"
    puts "COMPUTER vs COMPUTER... GAME STARTING IN 3..2..1!".cyan
    sleep(2)
    Game.new(Players::Computer.new("X"), Players::Computer.new("O")).play
  end
#==============================================
end
