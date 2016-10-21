class Pawn < Piece
	def movement(x_destination, y_destination)
		black_move = (y_destination < 7 && y_destination >= 5) && x_destination == @x_origin
		white_move = (y_destination > 2 && y_destination <= 4) && x_destination == @x_origin
		if @color == "black" && black_move
			"yes"
		elsif @color == "white" && white_move
			"yes"
		else
			"no"
		end
	end
end
# if @y_origin == 7											# => Pawn is white, and must move up
# 	destination[y] < 7 && destination[x] == @x_origin
# elsif @y_origin == 2										# => Pawn is black, and must move down
# 	destination[y] > 2 && destination[x] == @x_origin