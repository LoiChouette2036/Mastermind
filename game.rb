class Game

    def ask_user_color
        @color_choose_by_user = Array.new(4)

        puts "Choose 4 colors between: ['blue', 'red', 'green', 'yellow', 'brown', 'grey']"
        puts "Choose your first color"
        first_color = gets.chomp
        puts "Choose your second color"
        second_color = gets.chomp
        puts "Choose your third color"
        third_color = gets.chomp
        puts "Choose your fourth color"
        fourth_color = gets.chomp

        @color_choose_by_user = [first_color,second_color,third_color,fourth_color]
        puts "here the array #{@color_choose_by_user}"
    end

    def compare_array (array1, array2)
        @array_help_user = Array.new (4,"")
        array1.each_with_index do |color,index|
            if color == array2[index]
                @array_help_user.push("black")
            elsif array2.include?(color) && color != array2[index]
                @array_help_user.push("white")
            else
                puts "test it has to keep going"
            end
        end
        @array_help_user
    end


end

