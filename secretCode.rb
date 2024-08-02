require 'colorize'

class SecretCode

    attr_reader :secret_code

    def initialize
        color_to_choose = ["blue", "red", "green", "yellow", "brown", "orange"]
        @secret_code = Array.new(4) {color_to_choose.sample}
        puts "The secret code to find : #{@secret_code}"
    end

end
