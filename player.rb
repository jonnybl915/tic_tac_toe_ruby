class Player
  def initialize(letter)
    @letter = letter
  end
  def prompt_for_move
    puts "Your move #{letter} >>"
    gets.chomp.to_i
  end
end