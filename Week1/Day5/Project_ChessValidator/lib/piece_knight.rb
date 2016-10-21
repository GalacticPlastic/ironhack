class Knight < Piece
	def movement(x_destination, y_destination)
		x_absolute = (x_destination - @x_origin).abs
		y_absolute = (y_destination - @y_origin).abs
		if (x_absolute == 1 && y_absolute == 2) || (x_absolute == 2 && y_absolute == 1)
			# => true
			"yes"
		else
			# => false
			"no"
		end
	end
end