NOTES
=============================================================
Logic of individual pieces pulls board.
First change the letters on chess map coordinates to numbers.

    1 R  2 N  3 B  4 Q  5 K  6 B  7 N  8 R
   ---------------------------------------
8 | 1,8  2,8  3,8  4,8  5,8  6,8  7,8  8,8	Black
7 | 1,7  2,7  3,7  4,7  5,7  6,7  7,7  7,8
6 | 1,6  2,6  3,6  4,6  5,6  6,6  7,6  8,6
5 | 1,5  2,5  3,5  4,5  5,5  6,5  7,5  8,5
4 | 1,4  2,4  3,4  4,4  5,4  6,4  7,4  8,4
3 | 1,3  2,3  3,3  4,3  5,3  6,3  7,3  8,3
2 | 1,2  2,2  3,2  4,2  5,2  6,2  7,2  8,2
1 | 1,1  2,1  3,1  4,1  5,1  6,1  7,1  8,1	White

=> If y = 8, starting piece is black.
=> If y = 1, starting piece is white.

If white, forward is up
If black, forward is down

Code Pieces in this Order:
=> Rook
	origin[x] = destination[x] || origin[y] = destination[y]
=> King
	destination[x,y] = origin[x + 1,y + 1] || destination[x,y] = origin[x + 1, y] || destination[x,y] = origin[x - 1, y] || destination[x,y] = origin[x, y + 1] || destination[x,y] = origin[x, y - 1]
	|destination[x] - origin[x]| == 1 || |destination[y] - origin[y]| == 1
=> Knight
	{|destination[x] - origin[x]| == 1 && |destination[y] - origin[y]| == 2} || {|destination[x] - origin[x]| == 2 && |destination[y] - origin[y]| == 1}
=> Bishop
	=> |destination[x] - origin[x]| == |destination[y] - origin[y]|
=> Queen
	Rook || Bishop
=> Pawn
	while move != first
		move only 1 space forward
	else move = first
		move 2 spaces, only forward
	end
=> So...
	If origin[y] == 8		# => Pawn is white, and must move up
		destination[y] >= 2 && destination[x] == origin [x]
	If origin[y] == 1		# => Pawn is black, and must move down
		destination[y] <= 7 && destination[x] == origin [x]

Testing the Board:
=> Check if there's a piece.
=> If piece is there, call piece's movement.
=> Check if movement is off board.
=> Try to actually move!