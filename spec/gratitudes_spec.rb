require 'gratitudes'

RSpec.describe Gratitudes do
    it "returns an array of gratitudes" do
        @gratitudes = Gratitudes.new
        result = @gratitudes.format 
        expect(result).to eq "Be grateful for: "
    end

    it "adds a value to the array" do
        @gratitudes = Gratitudes.new
        @gratitudes.add("shelter")
        result = @gratitudes.format
        expect(result).to eq "Be grateful for: shelter"
    end

    it  "joins added values together" do
        @gratitudes = Gratitudes.new
        @gratitudes.add("shelter")
        @gratitudes.add("career")
        result = @gratitudes.format
        expect(result).to eq "Be grateful for: shelter, career"
    end
end