Tic Tac Toe, playable by two players in the command line via Ruby.

HOW TO PLAY:

    1. Navigate to the file's directory /tic_tac_toe
    2. Run the command 'ruby tic_tac_toe.rb'
    3. Enter name for 'Player 1'
    4. Enter name for 'Player 2'
    5. Choose a number between 1-9 to claim the space
    6. Game continues until a player wins, or all spaces are taken

RULES

    1. Players must choose an empty space
        1.1. If space chose is already taken, an error is thrown
    2. Players must choose a space between 1-9
        2.1. If space is chosen outside of 1-9, an error is thrown
    3. The first player to claim 3 spaces in a row wins
        3.1. If all spaces are claimed, and there are not 3 in a row,
        then it is a draw

NOTES FOR IMPROVEMENT

    As of now, the methods for determining the win condition are less than
    optimal. In the future, they will be broken into smaller methods to
    improve runtime. For now, everything runs as expected, so I'm going to
    leave it alone, and potentially look into optimization in the future.