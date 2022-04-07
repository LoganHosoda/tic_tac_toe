require_relative 'rules'

# Build the game board, store move data, visually displays results.
class Board < Rules
  attr_reader :move_counter, :turn1, :turn2, :legal, :move_data

  def initialize
    super
    @move_data = {
      1 => '*', 2 => '*', 3 => '*', 4 => '*', 5 => '*',
      6 => '*', 7 => '*', 8 => '*', 9 => '*'
    }
  end

  def draw_board
    puts ''
    puts " #{@move_data[1]} : #{@move_data[2]} : #{@move_data[3]} "
    puts '-----------'
    puts " #{@move_data[4]} : #{@move_data[5]} : #{@move_data[6]} "
    puts '-----------'
    puts " #{@move_data[7]} : #{@move_data[8]} : #{@move_data[9]} "
    puts ''
  end

  def player_choice(player_move, player_piece)
    @legal = legal_move(@move_data, player_move)
    if @legal
      @move_data[player_move] = player_piece
      @move_counter += 1
      draw_board
    else
      false
    end
  end

  def game_over
    @win_condition = true
  end
end
