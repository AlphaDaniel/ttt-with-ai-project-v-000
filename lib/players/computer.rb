# Initialize Players::Computer.new("X" or "O")
module Players
#======================AI======================
  class Computer < Player
    def move(board)
      sleep(0.2)
      puts "AI is thinking...".red
      rand(1..9).to_s
    end
  end
#==============================================
end
