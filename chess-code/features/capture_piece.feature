Feature: Capture black pawn

Move white and black pawn alternatively to arrive at a situation where white pawn can capture black pawn. 
Move the white pawn to capture the black pawn.

Background: 


Scenario Outline: Capture black pawn
When the chess board is initialized
When move piece from <from_pos> to <to_pos>
Then the output should be "Piece moved from <from_pos> to <to_pos>"

Examples:
| from_pos | to_pos |
| a2       | a3     |
| b7       | b6     |
| a3       | a4     |
| b6       | b5     |
| a4       | b5     |
