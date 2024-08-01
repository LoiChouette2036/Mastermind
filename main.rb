require_relative 'board'
require_relative 'game'
require_relative 'secretCode'

board = Board.new
secret_code = SecretCode.new
# Create an instance of the Game class
game = Game.new

# Call the ask_user_color method on the instance
game.ask_user_color