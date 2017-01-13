require 'rspec'
require_relative 'XOs'


describe XOs do
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