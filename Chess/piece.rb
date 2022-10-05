require_relative "board.rb"

class Piece 
    def initialize(color,board,pos)
        raise "Invalid color" if color != :black || color != :white
        raise "Invalid position" if board.valid_pos?(pos)
        @color = color
        @board = board
        @pos = pos
        
    end

    # to_s
    # empty?
    # pos=val
    # symbol
    # move_onto_check(end_pos)

end


