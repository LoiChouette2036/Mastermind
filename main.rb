require_relative 'board'
require_relative 'game'
require_relative 'secretCode'

board = Board.new
game = Game.new

secret_code_instance = SecretCode.new
secret_code_computer = secret_code_instance.secret_code

board.array_display(secret_code_computer)

#let s display the board
board.display_board

i = 0
while i < 12
    if !board.winner? 
        ##start the round
        array_from_user = game.ask_user_color

        ##array to help user in comparing the secret code and the user array
        array_to_help_user = game.compare_array(array_from_user,secret_code_computer)

        ##show the array to help
        puts "array to help : #{array_to_help_user}"
        board.array_display(array_to_help_user)

        # Update the board's arrays
        board.board_2d[i]=array_from_user
        board.board_help[i]=array_to_help_user

        # Display the updated board
        board.display_board

        # Debugging: Check the board_help values
        puts "board_help after update: #{board.board_help.inspect}"

        
        # Check for winner after updating the board
        if board.winner?
            puts "winner"
            break
        end

        i += 1 

    else
        puts "winner"
        break
    end
end





