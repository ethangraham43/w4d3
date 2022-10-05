require_relative 'piece.rb'
require_relative 'slideable.rb'

class Queen < Piece
  include Slideable
  

  def symbol
    '♛'.colorize(color)
  end

  protected

  def move_dirs
    # return the directions in which a Queen can move
    # a Queen can move horizontally, vertically, and diagonally

    moves_arr = []
    
      (-7..7).each do |i|
        moves_arr << [x + i, y + i]
        moves_arr << [x + i, y - i]
        moves_arr << [x + i, y]
        moves_arr << [x, y + i]
       end

  end

  end
end

Footer
