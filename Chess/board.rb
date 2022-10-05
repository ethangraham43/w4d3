require_relative "piece.rb"

class Board

    def initialize()
        @rows = Array.new(8) {Array.new(8,nil)}
        @piece = Piece.new()
    end

    def valid_moves(pos)
        row, col = pos
        if (row < 0 || row > 7) || (col < 0 || col > 7)
            raise "Must be on the board" 
            return false
        end
    end

    def [](pos)
        row,col = pos
        @rows[row][col]
    end

    def []=(pos,value)
        row,col = pos
        @rows[row][col] = value
    end

    def add_piece(pos)
        if self[pos] == nil
            self[pos] = @piece
            return true
        else
            return false
        end
    end

    def move_piece(start_pos, end_pos)
        self[start_pos] = nil
        self[end_pos] = @piece
    end

end









