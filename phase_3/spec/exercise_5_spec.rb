require 'exercise_5'

describe InteractiveCalculator do
    it "subracts two given numbers" do
        io = double :io
        expect(io).to receive(:puts).with("Hello. I will subtract two numbers. Please enter a number")
        expect(io).to receive(:gets).and_return("7")
        expect(io).to receive(:puts).with("Please enter another number")
        expect(io).to receive(:gets).and_return("3")
        expect(io).to receive(:puts).with("Here is your result: 4")

        interactive_calculator = InteractiveCalculator.new(io)
        interactive_calculator.run
    end
end
