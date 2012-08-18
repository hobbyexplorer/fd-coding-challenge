Feature: Move white pawn

Move a white pawn from current starting position to one step forward.

Scenario: Move white pawn one step forward
Given the chess board is initialized
When pawn move one step forward
Then the output should be "one step white move forward"
