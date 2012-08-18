#!/usr/bin/ruby
require './square_space.rb'
require './pawn.rb'
require './chess_exceptions.rb'

#Model class
class Model
	@board = {};
	def initialize()
		@board = Hash.new
		for cols in 'a'..'h'
			@board[cols]= {};
		end
		
		#initializing empty boxes of board
		for rows in 1..8
			if(rows!=2 || rows!=7)
				for cols in 'a'..'h'
					@board[cols][rows]= Square.new(nil);
				end
			end
		end
		
		#Initializing white pawns
		for cols in 'a'..'h'
			@board[cols][2]= Square.new(Pawn.new(1) );
		end
		
		#initializing black pawns
		for cols in 'a'..'h'
			@board[cols][7]= Square.new(Pawn.new(0) );
		end
		#@board['e'][6]= Square.new(Pawn.new(1) ); #Putting a dummy white pawn.
		print("Model: Board initialized\n");
	end
	
	def move(from_col, from_row, to_col, to_row)
		#diagnosing the piece origin location
		one_piece = @board[from_col][from_row].piece
		if(one_piece!=nil)
			piece_color = one_piece.color
		else
			no_piece_exception = NoPieceException.new
			raise no_piece_exception, "No piece found in the given location",caller;
		end
		
		#validating the move
		#getting color and difference in movement.
		row_diff = to_row-from_row;
		col_diff = ((to_col[0].ord)-(from_col[0]).ord);
		if(piece_color==1 && row_diff==1 && col_diff==0)
			#one step white move
			origin_piece = @board[from_col][from_row].piece
			dest_piece= @board[to_col][to_row].piece
			if(origin_piece!=nil && dest_piece!=nil)
				raise WrongMoveException.new, "Can not move, blocked by another piece",caller;
			elsif(origin_piece!=nil && dest_piece==nil)
				@board[to_col][to_row].piece = @board[from_col][from_row].piece;
				@board[from_col][from_row].piece = nil;
				puts "Piece moved from #{from_col}#{from_row} to #{to_col}#{to_row}";
				#puts "one step white move forward";
				return "one step white move forward";
			end
		elsif(piece_color==1 && row_diff==2 && col_diff==0)
			#first move two step
			#Yet to add validation for first move.
			puts "white first move two step";
			return "white first move two step";
		elsif(piece_color==1 && row_diff==1 && col_diff==1)
			#cross step white move to capture
			puts "cross step white move to capture";
			return "cross step white move to capture";
		elsif(piece_color==0 && row_diff==(-1) && col_diff==0)
			#one step black move 
			origin_piece = @board[from_col][from_row].piece
			dest_piece= @board[to_col][to_row].piece
			if(origin_piece!=nil && dest_piece!=nil)
				raise WrongMoveException.new, "Can not move, blocked by another piece",caller;
			elsif(origin_piece!=nil && dest_piece==nil)
				@board[to_col][to_row].piece = @board[from_col][from_row].piece;
				@board[from_col][from_row].piece = nil;
				puts "Piece moved from #{from_col}#{from_row} to #{to_col}#{to_row}";
				puts "one step black move forward";
				return "one step black move forward";
			end
		elsif(piece_color==0 && row_diff==(-2) && col_diff==0)
			#black first move two step
			puts "black first move two step";
			return "black first move two step";
		elsif(piece_color==0 && row_diff==(-1) && col_diff==1)
			#cross step black move to capture
			origin_piece = @board[from_col][from_row].piece
			dest_piece= @board[to_col][to_row].piece
			if(origin_piece!=nil && dest_piece!=nil)
				origin_color = origin_piece.color
				dest_color = dest_piece.color
				if(origin_color==dest_color)
					raise WrongMoveException.new, "Can not capture same player pieces",caller;
					return;
				end
				@board[to_col][to_row].piece = @board[from_col][from_row].piece;
				@board[from_col][from_row].piece = nil;
				puts "Piece moved from #{from_col}#{from_row} to #{to_col}#{to_row}";
			else
				no_piece_exception = NoPieceException.new
				raise no_piece_exception, "Either origin or destination piece is not found",caller;
			end
			puts "cross step black move to capture";
			return "cross step black move to capture";
		elsif(row_diff==0 && col_diff==0)
			puts "Piece not moved";
			return "Piece not moved";
		elsif(piece_color==1)
			#A wrong white move
			puts "wrong white move";
			return "wrong white move";
		elsif(piece_color==0)
			#wrong black move
			puts "wrong black move";
			return "wrong black move";
		else
			puts "What move is this?";
			return "What move is this?";
		end
	end
	
	attr_accessor:board
end
