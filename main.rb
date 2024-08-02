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


##start the round
array_from_user = game.ask_user_color

##array to help user in comparing the secret code and the user array
array_to_help_user = game.compare_array(array_from_user,secret_code_computer)

##show the array to help
puts "array to help : #{array_to_help_user}"
board.array_display(array_to_help_user)

board.board_2d[0]=array_from_user
board.board_help[0]=array_to_help_user

board.display_board





