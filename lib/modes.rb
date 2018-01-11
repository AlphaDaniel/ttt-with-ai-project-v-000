module Modes
#==============================================
  def mode
    nil
  end

  def mode=(mode)
    self.mode
  end

  def Spectator
    puts "COMPUTER vs COMPUTER... GAME STARTING IN 3..2..1!".cyan
    sleep(2)
    Game.new(Players::Computer.new("X"), Players::Computer.new("O")).play
  end
#==============================================
end
