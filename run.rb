require_relative 'tic_tac_toe'
require_relative 'XOs'
require_relative 'Player'


g = XOs.new
x = Player.new 'X'
o = Player.new 'O'

until g.winner || g.board_full?

  puts g.show_board

  pos = x.prompt_for_move

  g.take_turn 'X', pos

  pos = o.prompt_for_move
  g.take_turn 'O', pos
end