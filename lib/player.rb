require_relative 'board'

# Class that will store player data.
class Player < Board
  attr_accessor :name, :piece_choice

  def initialize(name)
    super()
    @name = name
    @piece_choice = name.chr
  end

  def move
    @piece_choice
  end
end
