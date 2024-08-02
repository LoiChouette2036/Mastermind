class CodeGenerator 
    COLORS = ["red", "blue", "green", "yellow", "orange", "purple"]

    def generator_code
        Array.new(4){COLORS.sample}
    end
end