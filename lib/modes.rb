module Modes
#==============================================
  attr_accessor :mode
  # def mode
  #   @mode
  # end
  #
  # def mode=(mode)
  #   @mode = mode
  # end

  def Spectator
    puts "COMPUTER vs COMPUTER... GAME STARTING IN 3..2..1!".cyan
    sleep(2)
    Game.new(Players::Computer.new("X"), Players::Computer.new("O")).play
  end
#==============================================
end
