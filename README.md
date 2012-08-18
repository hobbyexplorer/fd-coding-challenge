Code challenge
______________________________
chess code folder contains the code for chess source in ruby
the code follows MVC pattern
view class acs as interface that can be modified to fit in a UI later
controller passes the requests to model appropriately 
model holds the board and pieces
Pawn extends piece class and Pawn is_a piece
Color is coded as one and zero representing white and black respectively

Cucumber scenarios:
_________________________________
features folder holds the Cucumber scenarios and features
White pawn move feature: Tests whether white pawn can be moved usual one step forward
Black pawn move feature: Tests whether black pawn can be moved usual one step forward
Black pawn capture feature: Runs a series of moves and brings to a situation where white pawn can capture the black pawn. Makes the capturing move and verifies the output. 
