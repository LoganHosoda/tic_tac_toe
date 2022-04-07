# Rule enforcer. Ensures legal moves are made, checks for win condition.
class Rules
  attr_reader :rows, :columns, :diagonals, :reverse_diagonals, :win_condition

  def initialize
    @turn1 = true
    @turn2 = false
    @legal = false
    @win_condition = false
    @move_counter = 0
    @rows = [0, 0, 0]
    @columns = [0, 0, 0]
    @diagonals = [0]
    @reverse_diagonals = [0]
  end

  def legal_move(move_data, player_move)
    if player_move < 1 || player_move > 9
      puts 'Error, chose an invalid move!'
      false
    elsif move_data[player_move] != '*'
      puts 'Error, that position is already taken!'
      false
    else
      true
    end
  end

  def take_turns
    if @turn1 == true
      @turn1 = false
      @turn2 = true
    else
      @turn2 = false
      @turn1 = true
    end
  end

  def win_counter(players_choice)
    case players_choice
    when 1
      @rows[0] += 1
      @columns[0] += 1
      @diagonals[0] += 1
    when 2
      @rows[0] += 1
      @columns[1] += 1
    when 3
      @rows[0] += 1
      @columns[2] += 1
      @reverse_diagonals[0] += 1
    when 4
      @rows[1] += 1
      @columns[0] += 1
    when 5
      @rows[1] += 1
      @columns[1] += 1
      @diagonals[0] += 1
      @reverse_diagonals[0] += 1
    when 6
      @rows[1] += 1
      @columns[2] += 1
    when 7
      @rows[2] += 1
      @columns[0] += 1
      @reverse_diagonals[0] += 1
    when 8
      @rows[2] += 1
      @columns[1] += 1
    when 9
      @rows[2] += 1
      @columns[2] += 1
      @diagonals[0] += 1
    end
  end

  def game_won?
    if @rows[0] == 3 || @rows[1] == 3 || @rows[2] == 3
      true
    elsif @columns[0] == 3 || @columns[1] == 3 || @columns[2] == 3
      true
    elsif @diagonals[0] == 3
      true
    elsif @reverse_diagonals[0] == 3
      true
    end
  end
end
