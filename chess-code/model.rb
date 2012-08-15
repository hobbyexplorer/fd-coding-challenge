#!/usr/bin/ruby
require 'square_space'
require 'pawn'

#Model class
class Model
	@board = Hash.new
	
	def initialize()

		#initializing empty boxes of board
		for rows in 1..8
			if(rows!=2 || rows!=7)
				for cols in 'a'..'h'
					@board = {cols+(rows.to_s) => Square.new(nil)}
				end
			end
		end

		#Initializing white pawns
		for cols in 'a'..'h'
			#print("Index is ", cols+(2).to_s)
			@board = { cols+(2).to_s => Square.new( Pawn.new(1) ) }
		end
		
		#initializing black pawns
		for cols in 'a'..'h'
			@board = { cols+(1).to_s => Square.new( Pawn.new(0) )  }
		end
		
		print("Model: Board initialized\n");
	end
	
	def move(from_col, from_row, to_col, to_row)
		#finding the from location
		one_piece = @board[from_col+(from_row).to_s].piece
		
		if(one_piece!=nil)
			piece_color = one_piece.color
		end
		#getting color and difference in movement.
		print("This is the color",piece_color);
		diff = to_row-from_row;
		
		
		if()
		
		print("size of hash" , @board.length);
		print("Cols a" , @board['a2'].piece.color)
		print("Model: move method called \n");
		return;
	end
	
	attr_accessor:board
end























