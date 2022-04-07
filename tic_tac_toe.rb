require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/rules'

# Instantiate game board and rules objects
game_board = Board.new

puts '============================'
puts 'TIC TAC TOE, BY LOGAN HOSODA'
puts '============================'
puts ''

# Player 1 data
puts 'Player 1, please enter your name: '
name1 = gets

# Player 2 data
puts 'Player 2, please enter your name: '
name2 = gets

# Draw first empty game board
game_board.draw_board

# Instantiate player objects
player1 = Player.new(name1)
player2 = Player.new(name2)

# Begin game loop
while game_board.move_counter <= 8 && game_board.win_condition == false
  # Player 1 moves
  if game_board.turn1
    puts "#{player1.name.chomp}, choose an empty space between 1-9."
    move = gets.to_i
    game_board.player_choice(move, player1.move)
    # Checks for legal move
    if game_board.legal
      # If legal, increments win counter, check for win condiiton
      player1.win_counter(move)
      if player1.game_won?
        game_board.game_over
        puts '=================================='
        puts "#{player1.name.chomp} wins the game!"
        puts '=================================='
      end
      game_board.take_turns
    end
  elsif game_board.turn2
    # Player 2 moves
    puts "#{player2.name.chomp}, choose an empty space between 1-9."
    move = gets.to_i
    game_board.player_choice(move, player2.move)
    # Checks for legal move
    if game_board.legal
      # If legal, increments win counter, checks for win condition
      player2.win_counter(move)
      if player2.game_won?
        game_board.game_over
        puts '=================================='
        puts "#{player2.name.chomp} wins the game!"
        puts '=================================='
      end
      game_board.take_turns
    end
  end
end

# If loop ends without a winner, then it's a draw
if game_board.win_condition == false
  puts '=================================='
  puts "It's a draw, nobody wins!"
  puts '=================================='
end
