require "report_length"
RSpec.describe "report_length method" do
    it "returns a message of the string length" do
        result = report_length("hello")
        expect(result).to eq "This string was 5 characters long."
    end

    it "returns message of string with a space inbetween" do 
        result = report_length("hello Magda")
        expect(result).to eq "This string was 11 characters long."
    end
end
