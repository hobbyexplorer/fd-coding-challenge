#!/usr/bin/ruby
require 'model'
require 'controller'

#View class.
#Exposes interface methods.
controller = Controller.new;
=begin
#White pawn moves
controller.move('a',2,'a',2); #piece not moved
controller.move('a',2,'b',3); #piece moved crossways to capture
controller.move('a',2,'a',4); #pawn moving two steps forward(first move)
controller.move('a',2,'a',3); #Pawn moves one step forward.
controller.move('a',2,'a',5); #Too far for pawn. Wrong move.

#general no piece exception
controller.move('e',3,'a',2); #no piece exception


#Black pawn moves
controller.move('d',7,'d',7); #piece not moved
controller.move('d',7,'e',6); #piece moved crossways to capture
controller.move('d',7,'d',5); #pawn moving two steps forward(first move)
controller.move('d',7,'d',6); #Pawn moves one step forward.
controller.move('d',7,'d',4); #Too far for pawn. Wrong move.
=end

controller.move('a',2,'a',3); #Pawn moves one step forward.