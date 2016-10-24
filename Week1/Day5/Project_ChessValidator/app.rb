require_relative("lib/board.rb")
require_relative("lib/pieces.rb")
require_relative("lib/piece_bishop.rb")
require_relative("lib/piece_king.rb")
require_relative("lib/piece_knight.rb")
require_relative("lib/piece_pawn.rb")
require_relative("lib/piece_queen.rb")
require_relative("lib/piece_rook.rb")

# # # ----------- PIECE POSITIONS ----------- # # #
black_rook_left = Rook.new(1, 8, "black")
black_knight_left = Knight.new(2, 8, "black")
black_bishop_left = Bishop.new(3, 8, "black")
black_queen = Queen.new(4, 8, "black")
black_king = King.new(5, 8, "black")
black_bishop_right = Bishop.new(6, 8, "black")
black_knight_right = Knight.new(7, 8, "black")
black_rook_right = Rook.new(8, 8, "black")
black_pawn1 = Rook.new(1, 7, "black")
black_pawn2 = Rook.new(2, 7, "black")
black_pawn3 = Rook.new(3, 7, "black")
black_pawn4 = Rook.new(4, 7, "black")
black_pawn5 = Rook.new(5, 7, "black")
black_pawn6 = Rook.new(6, 7, "black")
black_pawn7 = Rook.new(7, 7, "black")
black_pawn8 = Rook.new(8, 7, "black")

white_rook_left = Rook.new(1, 1, "white")
white_knight_left = Knight.new(2, 1, "white")
white_bishop_left = Bishop.new(3, 1, "white")
white_queen = Queen.new(4, 1, "white")
white_king = King.new(5, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white")
white_knight_right = Knight.new(7, 1, "white")
white_rook_right = Rook.new(8, 1, "white")
white_pawn1 = Rook.new(1, 2, "white")
white_pawn2 = Rook.new(2, 2, "white")
white_pawn3 = Rook.new(3, 2, "white")
white_pawn4 = Rook.new(4, 2, "white")
white_pawn5 = Rook.new(5, 2, "white")
white_pawn6 = Rook.new(6, 2, "white")
white_pawn7 = Rook.new(7, 2, "white")
white_pawn8 = Rook.new(8, 2, "white")

my_board = Board.new
my_board.add_piece(black_rook_left)		# => [1][6]
my_board.add_piece(black_knight_left)
my_board.add_piece(black_bishop_left)
my_board.add_piece(black_queen)
my_board.add_piece(black_king)
my_board.add_piece(black_bishop_right)
my_board.add_piece(black_knight_right)
my_board.add_piece(black_rook_right)
my_board.add_piece(black_pawn1)
my_board.add_piece(black_pawn2)
my_board.add_piece(black_pawn3)
my_board.add_piece(black_pawn4)
my_board.add_piece(black_pawn5)
my_board.add_piece(black_pawn6)
my_board.add_piece(black_pawn7)
my_board.add_piece(black_pawn8)
my_board.add_piece(white_rook_left)
my_board.add_piece(white_knight_left)
my_board.add_piece(white_bishop_left)
my_board.add_piece(white_queen)
my_board.add_piece(white_king)
my_board.add_piece(white_bishop_right)
my_board.add_piece(white_knight_right)
my_board.add_piece(white_rook_right)
my_board.add_piece(white_pawn1)
my_board.add_piece(white_pawn2)
my_board.add_piece(white_pawn3)
my_board.add_piece(white_pawn4)
my_board.add_piece(white_pawn5)
my_board.add_piece(white_pawn6)
my_board.add_piece(white_pawn7)
my_board.add_piece(white_pawn8)

# => my_board.movement(4, 8, 4, 4)	==	"yes"		# => Black Queen
# => my_board.movement(8, 8, 100, 100)	==	"no"
# => Board must know that the starting and final positions are valid and on the board.

# @piece[1][8].movement

# # # # ----------- ROOK ----------- # # #
# puts ""
# puts "Valid Rook movements"
# puts "--------------------"
# p black_rook_left.movement(5, 8) == "yes"
# p white_rook_right.movement(8, 3) == "yes"
# p white_rook_right.movement(2, 1) == "yes"
# puts ""
# puts "Invalid Rook movements"
# puts "--------------------"
# p black_rook_left.movement(2, 7) == "no"
# p white_rook_right.movement(7, 2) == "no"

# # # # ----------- KING ----------- # # #
# puts ""
# puts "Valid King movements"
# puts "--------------------"
# p black_king.movement(5, 7) == "yes"
# p black_king.movement(6, 7) == "yes"
# p white_king.movement(6, 2) == "yes"
# p white_king.movement(5, 2) == "yes"
# p white_king.movement(4, 1) == "yes"
# puts ""
# puts "Invalid King movements"
# puts "----------------------"
# p black_king.movement(5, 4) == "no"
# p black_king.movement(7, 5) == "no"
# p white_king.movement(7, 2) == "no"
# p white_king.movement(1, 5) == "no"
# p white_king.movement(1, 1) == "no"
# puts ""
# puts "Valid KNIGHT"
# puts "--------------------"
# p black_knight_left.movement(1, 6) == "yes"
# p black_knight_right.movement(6, 6) == "yes"
# p white_knight_left.movement(3, 3) == "yes"
# p white_knight_right.movement(8, 3) == "yes"
# puts ""
# puts "Invalid KNIGHT"
# puts "--------------------"
# p black_knight_left.movement(5, 3) == "no"
# p white_knight_left.movement(8, 8) == "no"

# # # # ----------- BISHOP ----------- # # #
# puts ""
# puts "Valid BISHOP"
# puts "--------------------"
# p black_bishop_left.movement(8, 3) == "yes"
# p white_bishop_left.movement(1, 4) == "yes"
# puts ""
# puts "Invalid BISHOP"
# puts "--------------------"
# p black_bishop_right.movement(2, 5) == "no"
# p white_bishop_right.movement(3, 3) == "no"

# # # # ----------- QUEEN ----------- # # #
# puts ""
# puts "Valid QUEEN"
# puts "--------------------"
# p black_queen.movement(4, 4) == "yes"
# p white_queen.movement(4, 5) == "yes"

# puts ""
# puts "Invalid QUEEN"
# puts "--------------------"
# p black_queen.movement(5, 3) == "no"
# p white_queen.movement(3, 3) == "no"
# puts ""
# # # ----------- PAWN ----------- # # #
puts ""
puts "Valid White Pawn"
puts "--------------------"
p white_pawn.movement(2, 3) == "yes"
p white_pawn.movement(2, 4) == "yes"

puts ""
puts "Invalid White Pawn"
puts "--------------------"
p black_pawn.movement(2, 5) == "no"
p white_pawn.movement(3, 3) == "no"
# puts ""