class Board
	attr_accessor(:pieces)
	def initialize(pieces)
    	@pieces = [nil, [], [], [], [], [], [], [], []]
	end
	def add_piece(chess_piece)
		x = chess_piece.x
		y = chess_piece.y
		@piece[x][y].chess_piece
	end
	def movement(x, y, x_destination, y_destination)
		# => Invalidates positions off the board
		if > @pieces.length || y > @pieces.length || x_destination > @pieces.length || y_destination > @pieces.length 
			"no"
		else
			chess_piece = @piece[x][y]
			# Empty space
			if chess_piece == nil
				"no"
			# Piece not moving
			elsif x = x_destination && y == y_destination
				"no"
			#Validates by defined piece class movement method
			else
				chess_piece.movement(x_destination, y_destination)
			end
		end
	end
end

# => Board completed per Nizar assignment review, but I still don't understand! :(