class GuessEvaluator 
    def provide_feedback(secret_code,guess)
        exact_matches = 0
        near_matches = 0
        secret_code_copy = secret_code.clone
        guess_copy = guess.clone

        secret_code_copy.each_with_index do |color, index|
            if color == guess_copy[index]
                exact_matches += 1
                secret_code_copy[index] = nil
                guess_copy[index] = nil
            end
        end 

        guess_copy.compact.each_with_index do |color, index|
            if color && secret_code_copy.include?(color)
                near_matches += 1
                secret_code_copy[secret_code_copy.index(color)] = nil
            end
        end

        {exact: exact_matches, near: near_matches}
    end
end