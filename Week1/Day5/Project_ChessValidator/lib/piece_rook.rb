class Rook < Piece
	def movement(x_destination, y_destination)
		if (x_destination - @x_origin != 0 && y_destination == y_origin) || (y_destination - @y_origin != 0 && x_destination == x_origin)
			# => true
			"yes"
		else
			# => false
			"no"
		end
	end
end