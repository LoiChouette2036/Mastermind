require 'colorize'

class SecretCode

    def initialize
        color_to_choose = ["blue", "red", "green", "yellow", "brown", "grey"]
        @secret_code = Array.new(4) {color_to_choose.sample}
        puts "The secret code to find : #{@secret_code}"
    end

    def code_display
        @array_code_display = @secret_code.map do |color|
            '.'.colorize(color: color.to_sym)
        end
        puts "#{@array_code_display.join(' ')}"
    end
end

secretcode = SecretCode.new
secretcode.code_display