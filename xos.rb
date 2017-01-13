class XOs
  attr_reader :turns_left
  def initialize
    @turns_left = 9
    @board = Array.new(9)
  end
  def winner

  end
  def board_full?
      !@board.include?(nil)
  end

  def take_turn(letter, position)
    @board[position - 1] = letter
    @turns_left -= 1

  end
  def letter_at(position)
    @board[position - 1]

  end
end