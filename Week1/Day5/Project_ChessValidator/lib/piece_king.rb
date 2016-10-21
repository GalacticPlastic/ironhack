class King < Piece
	def movement(x_destination, y_destination)
		if (x_destination - @x_origin).abs == 1 || (y_destination - @y_origin).abs == 1
			# => true
			"yes"
		else
			# => false
			"no"
		end
	end
end
# destination[x,y] == origin[x +/- 1,y +/- 1]
# || destination[x,y] == origin[x +/- 1, y]
# || destination[x,y] == origin[x, y +/- 1]
# if either change by 1 in either direction