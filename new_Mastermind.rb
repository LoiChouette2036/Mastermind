require_relative 'new_player'
require_relative 'new_SecretGenerator'
require_relative 'new_GuessEvaluator'


class Mastermind 
    def initialize
        @code_generator = CodeGenerator.new
        @player = Player.new
        @evaluator = GuessEvaluator.new
        @secret_code = @code_generator.generator_code
    end

    def play
        12.times do |turn|
            puts "Turn #{turn + 1}:"
            guess = @player.get_guess
            feedback = @evaluator.provide_feedback(@secret_code, guess)
            display_feedback(feedback)

            if feedback[:exact] == 4
                puts "Congratulations! You've guessed the code!"
                return
            end
        end
        
        puts "Game over! The secret code was: #{@secret_code.join}"
        
    end

    private

    def display_feedback(feedback)
      puts "Exact matches: #{feedback[:exact]}"
      puts "Near matches: #{feedback[:near]}"
    end
  end