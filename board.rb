require 'colorize'

class Board
    def initialize
        @board_2d = Array.new(12) { Array.new(4)}
        @board_help = Array.new(12) {Array.new(4)}

        #print the 2D array to see its structure
        @board_2d.each_with_index do |inner_array, index|
            puts "Try #{index+1}: #{inner_array.inspect}    #{@board_help[index]}"
        end
    end


end

board = Board.new