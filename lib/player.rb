class Player
#=================properties===================
  attr_reader :token
#=================intialize====================
  def initialize(char)
    @token = char
  end
#===================class======================
  def self.turn
    move = current_player.move(board)
    sleep(0.3)
    board.valid_move?(move)? board.update(move, current_player) : current_player.class == Players::Computer ? self.turn : error!
    board.display
    puts "==========="
  end

  def self.error!
    puts "\n Invalid Move Try Again \n".colorize(color: :white, background: :red)
    sleep(0.2)
    self.turn
  end
#==============================================
end
