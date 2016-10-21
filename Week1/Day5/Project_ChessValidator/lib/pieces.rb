class Piece
	attr_accessor :x_origin, :y_origin, :color
	def initialize(x_origin, y_origin, color)
		@x_origin = x_origin
		@y_origin = y_origin
		@color = color
	end
end