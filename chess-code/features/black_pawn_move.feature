Feature: Move black pawn

Move a black pawn from current starting position to one step forward.

Background: 
Given the chess board is initialized

Scenario: Move black pawn one step forward
When black pawn move one step forward
Then the output should be "one step black move forward"
