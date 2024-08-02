require 'colorize'

class Board
    attr_reader :array_display
    
    def initialize
        @board_2d = Array.new(12) { Array.new(4)}
        @board_help = Array.new(12) {Array.new(4)}

        #print the 2D array to see its structure
        @board_2d.each_with_index do |inner_array, index|
            puts "Try #{index+1}: #{inner_array.inspect}    #{@board_help[index]}"
        end
    end

    def array_display (array)
        @array_display = array.map do |color|
            '.'.colorize(color: color.to_sym)
        end
        puts "#{@array_display.join(' ')}"
    end



end

