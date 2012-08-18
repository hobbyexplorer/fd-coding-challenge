Feature: Move white pawn

Move a white pawn from current starting position to one step forward.

Background: 
Given the chess board is initialized

Scenario Outline: Move white pawn one step forward
When move piece from <from_pos> to <to_pos>
Then the output should be "Piece moved from <from_pos> to <to_pos>"

Examples:
| from_pos | to_pos |
| a2       | a3     |
