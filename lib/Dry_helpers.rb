class Dry_Helpers
#=================DRY_Helpers==================
  def win_combo_char
    cell[won?[0]]
  end

  def current_player
    board.turn_count.even? ? player_1 : player_2
  end

  def cell
    board.cells
  end
#==============================================
end