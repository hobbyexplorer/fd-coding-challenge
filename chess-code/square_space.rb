#!/usr/bin/ruby

#Square class. Square class will serve as place holder for piece objects at the board.
class Square
	@piece
	def initialize(one_piece)
		@piece = one_piece
	end
	attr_accessor:piece
	
end
