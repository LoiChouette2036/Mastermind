require 'colorize'

class Board
    attr_reader :array_display
    attr_accessor :board_2d, :board_help

    def initialize
        @board_2d = Array.new(12) { Array.new(4)}
        @board_help = Array.new(12) {Array.new(4)}
    end

    #def display_board
    #    #print the 2D array to see its structure
    #    @board_2d.each_with_index do |inner_array, index|
    #        puts "Try #{index+1}: #{inner_array.inspect}    #{@board_help[index]}"
    #    end
    #end

    def display_board
        # Print the 2D array to see its structure
        @board_2d.each_with_index do |inner_array, index|
            display_row = inner_array.map do |color|
                if color
                    '.'.colorize(color: color.to_sym)
                else
                    '.'
                end
            end.join(' ')

            help_row = @board_help[index].map do |color|
                if color
                    '.'.colorize(color: color.to_sym)
                else
                    '.'
                end
            end.join(' ')

            puts "Try #{index + 1}: #{display_row}    #{help_row}"
        end
    end

    def winner?
        black_dot = '.'.colorize(color: :black)
        @board_help.any? do |row|
            row.all? {|dot| dot == black_dot}
        end
    end

    def array_display (array)
        @array_display = array.map do |color|
            '.'.colorize(color: color.to_sym)
        end
        puts "#{@array_display.join(' ')}"
    end
end

