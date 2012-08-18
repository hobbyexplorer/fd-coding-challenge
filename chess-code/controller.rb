#!/usr/bin/ruby
require './model.rb'

#Controller class. 
class Controller
	@model;
	def initialize()
		@model = Model.new
	end
	
	def move(from_col, from_row, to_col, to_row)
		#print("Controller: Moving the piece...\n");
		@model.move(from_col, from_row, to_col, to_row);
	end
end