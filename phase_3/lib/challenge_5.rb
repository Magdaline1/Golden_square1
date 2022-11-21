class StringRepeater
    def initialize(io)
        @io = io
    end

    def repeat 
        @io.puts "Hello. I will repeat a string many times. Please enter a string"
        user_input = @io.gets.chomp
        @io.puts "Please enter a number of repeats"
        user_input_2 = @io.gets.chomp
        output = user_input * (user_input_2.to_i)
        @io.puts "Here is your result: #{output}"
    end

    def run
        return repeat
    end
end


string_repeater = StringRepeater.new(Kernel)
string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX