Feature: Move black pawn

Move a black pawn from current starting position to one step forward.

Background: 
Given the chess board is initialized

Scenario Outline: Move black pawn one step forward
When move piece from <from_pos> to <to_pos>
Then the output should be "Piece moved from <from_pos> to <to_pos>"

Examples:
| from_pos | to_pos |
| b7       | b6     |
