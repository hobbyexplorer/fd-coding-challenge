#!/usr/bin/ruby
require 'model'

#Controller class. 
class Controller
	@model;
	def initialize()
		@model = Model.new
	end
	
	def move(from_col, from_row, to_col, to_row)
		print("Controller: Moving the piece...\n");
		@model.move('a', 2, 'a', 3);
	end

end