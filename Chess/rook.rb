require_relative 'piece.rb'
require_relative 'slideable.rb'

class Rook < Piece
  include Slideable

  def symbol
    '♜'.colorize(color)
  end

  protected

  def move_dirs
    # return the directions in which a rook can move
    # a Rook can move horizontally and vertically
    moves_arr = []
    
      (-7..7).each do |i|
        moves_arr << [x + i, y]
        moves_arr << [x, y + i]
       end



  end

end