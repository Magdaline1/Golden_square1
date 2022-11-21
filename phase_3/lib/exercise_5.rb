class InteractiveCalculator
    def initialize(io)
        @io = io
    end

    def calculator 
        @io.puts "Hello. I will subtract two numbers. Please enter a number"
        user_input = @io.gets.chomp
        @io.puts "Please enter another number"
        user_input_2 = @io.gets.chomp
        total = (user_input.to_i - user_input_2.to_i)
        @io.puts "Here is your result: #{total}"
    end

    def run
        return calculator
    end
end


# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1