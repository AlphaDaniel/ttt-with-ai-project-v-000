# Initialize Players::Computer.new("X" or "O")
module Players
#======================AI======================
  class Computer < Player
    def move(board)
      # puts "==========="
      sleep(0.5)
      puts "AI is thinking...".red
      rand(1..9).to_s
    end
  end
#==============================================
end
