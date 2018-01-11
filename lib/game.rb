class Game < Dry_Helpers
#=====================================properties======================================
  include Players
  extend Modes
  attr_accessor :player_1, :player_2, :board
#=====================================intialize=======================================
  def initialize(p1 = Players::Human.new("X"), p2 = Players::Human.new("O"), board = Board.new)
    self.player_1 = p1; self.player_2 = p2; self.board = board
  end
#====================================game_states======================================
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
#=====================================================================================
  def won?
    WIN_COMBINATIONS.find{|c| cell[c[0]] == cell[c[1]] && cell[c[0]] == cell[c[2]] && cell[c[0]] != " "}
  end

  def draw?
    !won? && board.full?
  end

  def over?
    won? || draw?
  end
#========================================CLI==========================================
  def self.start
    puts "Welcome To Tic Tac Toe!".cyan
    puts "Please Enter Game Mode To Start".green
    puts "Spectator:"+" 0".green
    puts "You vs Computer:"+" 1".green
    puts "Player vs Player:"+" 2".green
    choose
  end

  def self.choose
    self.mode = gets.strip
    until self.mode == "valid"
      if self.mode == "0"
        self.spectator
      elsif self.mode == "1"
        self.vs_computer
      elsif self.mode == "2"
        self.player_vs_player
      else
        self.mode_error
      end
    end
  end

  def play
    while !over? && !draw?; turn end
    if won? then puts "Congratulations #{winner}!".green elsif draw? then puts "It's A Draw!!".yellow end
  end
#=====================================================================================
end
