Feature: Move white pawn

Move a white pawn from current starting position to one step forward.

Background: 
Given the chess board is initialized

Scenario: Move white pawn one step forward
When white pawn move one step forward
Then the output should be "one step white move forward"