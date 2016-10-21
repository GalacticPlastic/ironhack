class Bishop < Piece
	def movement(x_destination, y_destination)
		if (x_destination - @x_origin).abs == (y_destination - @y_origin).abs
			# => true
			"yes"
		else
			# => false
			"no"
		end
	end
end
# Difference of x = difference of y_destination
# (Xo - Xd).abs = Yo - Yd).abs