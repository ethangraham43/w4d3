require_relative 'piece.rb'
require_relative 'slideable.rb'

class Bishop < Piece
  include Slideable

  def symbol
    '♝'.colorize(color)
  end

  protected

  def move_dirs
    # return the directions in which a Bishop can move
    # a Bishop can move diagonally

        moves_arr = []
    
      (-7..7).each do |i|
        moves_arr << [x + i, y + i]
        moves_arr << [x + i, y - i]
       end

  end
end