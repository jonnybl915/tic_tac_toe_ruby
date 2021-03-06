class XOs
  attr_reader :turns_left
  def initialize
    @turns_left = 9
    @board = Array.new(9)
  end
  def winner
    rows = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9],
        [1, 5, 9],
        [3, 5, 7],
    ]

    rows.each do |row|
      if did_win_row?(row, 'X')
        return 'X'
      elsif did_win_row?(row, 'O')
        return 'O'
      end

    end
  end
  def did_win_row?(row, player)
    row.select { |pos| letter_at(pos) == player}.count == 3
  end
  def board_full?
      !@board.include?(nil)
  end

  def take_turn(letter, position)
    @board[position - 1] = letter
    @turns_left -= 1

  end
  def show_board
    "#{letter_at 1}   |   #{letter_at 2}    |   #{letter_at 3}
     ----------------------------------------------------------
     #{letter_at 4}   |   #{letter_at 5}    |   #{letter_at 6}
     ----------------------------------------------------------
     #{letter_at 7}   |   #{letter_at 8}    |   #{letter_at 9}"
  end
  def letter_at(position)
    @board[position - 1]

  end
end