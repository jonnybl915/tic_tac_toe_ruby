require 'rspec'
require_relative 'XOs'


describe XOs do

  it 'can take one turn' do
    x = XOs.new

    # I take one turn
    # where I place an x at position 3
    x.take_turn('X', 3)

    # something happens ...
    expect(x.turns_left)

    # I see the X on the board at (Position 3)
    expect(x.letter_at 3).to eq 'X'
  end

  it 'rejects out of bounds moves'
  it 'rejects squares that are already taken'

  it '...' do
    x = XOs.new 

    expect(x.letter_at 7).to eq nil
  end

  skip 'can fill up the board' do

    # c = Counter.new
    # c.up
    # expect(c.count).to eq 1

    x = XOs.new

    # I fill up the board
    9.times do
      x.take_turn
    end

  end

end