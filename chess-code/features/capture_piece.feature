Feature: Capture black pawn

Move white and black pawn alternatively to arrive at a situation where white pawn can capture black pawn. 
Move the white pawn to capture the black pawn.

Background: 


Scenario: Capture black pawn
When the chess board is initialized
And move piece from a2 to a3
And move piece from b7 to b6
And move piece from a3 to a4
And move piece from b6 to b5
And move piece from a4 to b5
Then the output should be "Piece moved from a4 to b5"
