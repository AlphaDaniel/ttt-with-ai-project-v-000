# Initialize Players::Human.new("X" or "O")
module Players
  def self.turn
    move = current_player.move(board)
    sleep(0.3)
    board.valid_move?(move)? board.update(move, current_player) : current_player.class == Players::Computer ? turn : error!
    board.display
    puts "==========="
  end

  def self.error!
    puts "\n Invalid Move Try Again \n".colorize(color: :white, background: :red)
    sleep(0.2)
    turn
  end
#====================human=====================
  class Human < Player
    def move(board)
      board.display
      puts "Your Move #{self.token}! (Enter 1-9)".yellow
      gets.strip
    end
  end
#==============================================
end
