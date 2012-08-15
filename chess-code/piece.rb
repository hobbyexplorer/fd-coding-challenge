#!/usr/bin/ruby

#Piece class. 
class Piece
	@color
	
	def initialize(color)
		@color = color;
	end
	
	def is_white()
		return @color==1;
	end
	
	def is_black()
		return @color==0;
	end
	
	attr_accessor:color
end