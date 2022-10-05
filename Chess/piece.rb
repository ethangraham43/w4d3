require_relative "board.rb"
require_relative "move_modules.rb"

class Piece
    def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = pos
    end

      def valid_moves(pos)
        row, col = pos
        if (row < 0 || row > 7) || (col < 0 || col > 7)
            raise "Must be on the board" 
            return false
        end
    end

    # to_s
    # empty?
    # pos=val
    # symbol
    # move_onto_check(end_pos)

end



# class NullPiece < Piece

#     def initialize(start_pos = nil)
#         @start_pos = start_pos

#     end

# end