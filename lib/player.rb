class Player
#=================properties===================
  attr_reader :token
#=================intialize====================
  def initialize(char)
    @token = char
  end

  def self.turn
    move = Game.current_player.move(board)
    sleep(0.3)
    Game.board.valid_move?(move)? Game.board.update(move, current_player) : Game.current_player.class == Players::Computer ? self.turn : error!
    Game.board.display
    puts "==========="
  end

  def self.error!
    puts "\n Invalid Move Try Again \n".colorize(color: :white, background: :red)
    sleep(0.2)
    self.turn
  end
#==============================================
end
