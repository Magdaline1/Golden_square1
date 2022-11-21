require 'challenge_5'

describe StringRepeater do
    it "repeats a string for the given amount of times" do
        io = double :io
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times. Please enter a string")
        expect(io).to receive(:gets).and_return("hello")
        expect(io).to receive(:puts).with("Please enter a number of repeats")
        expect(io).to receive(:gets).and_return("7")
        expect(io).to receive(:puts).with("Here is your result: hellohellohellohellohellohellohello")

        string_repeater = StringRepeater.new(io)
        string_repeater.run
    end
end