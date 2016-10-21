require_relative("lib/pieces.rb")
require_relative("lib/piece_bishop.rb")
require_relative("lib/piece_king.rb")
require_relative("lib/piece_knight.rb")
require_relative("lib/piece_pawn.rb")
require_relative("lib/piece_queen.rb")
require_relative("lib/piece_rook.rb")

# my_board = Board.new
# my_board.add_piece(black_rook_left)

# # # ----------- PIECE POSITIONS ----------- # # #
black_rook_left = Rook.new(1, 8, "black")
black_knight_left = Knight.new(2, 8, "black")
black_bishop_left = Bishop.new(3, 8, "black")
black_queen = Queen.new(4, 8, "black")
black_king = King.new(5, 8, "black")
black_bishop_right = Bishop.new(6, 8, "black")
black_knight_right = Knight.new(7, 8, "black")
black_rook_right = Rook.new(8, 8, "black")
black_pawn = Rook.new(7, 7, "black")

white_rook_left = Rook.new(1, 1, "white")
white_knight_left = Knight.new(2, 1, "white")
white_bishop_left = Bishop.new(3, 1, "white")
white_queen = Queen.new(4, 1, "white")
white_king = King.new(5, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white")
white_knight_right = Knight.new(7, 1, "white")
white_rook_right = Rook.new(8, 1, "white")
white_pawn = Rook.new(2, 2, "white")

# # # ----------- ROOK ----------- # # #
puts ""
puts "Valid Rook movements"
puts "--------------------"
p black_rook_left.movement(5, 8) == "yes"
p white_rook_right.movement(8, 3) == "yes"
p white_rook_right.movement(2, 1) == "yes"
puts ""
puts "Invalid Rook movements"
puts "--------------------"
p black_rook_left.movement(2, 7) == "no"
p white_rook_right.movement(7, 2) == "no"

# # # ----------- KING ----------- # # #
puts ""
puts "Valid King movements"
puts "--------------------"
p black_king.movement(5, 7) == "yes"
p black_king.movement(6, 7) == "yes"
p white_king.movement(6, 2) == "yes"
p white_king.movement(5, 2) == "yes"
p white_king.movement(4, 1) == "yes"
puts ""
puts "Invalid King movements"
puts "----------------------"
p black_king.movement(5, 4) == "no"
p black_king.movement(7, 5) == "no"
p white_king.movement(7, 2) == "no"
p white_king.movement(1, 5) == "no"
p white_king.movement(1, 1) == "no"
puts ""
puts "Valid KNIGHT"
puts "--------------------"
p black_knight_left.movement(1, 6) == "yes"
p black_knight_right.movement(6, 6) == "yes"
p white_knight_left.movement(3, 3) == "yes"
p white_knight_right.movement(8, 3) == "yes"
puts ""
puts "Invalid KNIGHT"
puts "--------------------"
p black_knight_left.movement(5, 3) == "no"
p white_knight_left.movement(8, 8) == "no"

# # # ----------- BISHOP ----------- # # #
puts ""
puts "Valid BISHOP"
puts "--------------------"
p black_bishop_left.movement(8, 3) == "yes"
p white_bishop_left.movement(1, 4) == "yes"
puts ""
puts "Invalid BISHOP"
puts "--------------------"
p black_bishop_right.movement(2, 5) == "no"
p white_bishop_right.movement(3, 3) == "no"

# # # ----------- QUEEN ----------- # # #
puts ""
puts "Valid QUEEN"
puts "--------------------"
p black_queen.movement(4, 4) == "yes"
p white_queen.movement(4, 5) == "yes"

puts ""
puts "Invalid QUEEN"
puts "--------------------"
p black_queen.movement(5, 3) == "no"
p white_queen.movement(3, 3) == "no"
puts ""
# # ----------- PAWN ----------- # # #
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
puts ""