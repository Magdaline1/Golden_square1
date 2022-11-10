require 'grammar_stats'

RSpec.describe GrammarStats do
    it "checks if a string has the correct attributes" do
        stat = GrammarStats.new
        expect(stat.check("Hello!")).to eq true
    end

    it "checks if a string has the correct attributes" do
        stat = GrammarStats.new
        expect(stat.check("bye.")).to eq false
    end

    it "calculates the percentage of passed texts in the `check` method" do
        stat = GrammarStats.new
        stat.check("Hello!")
        stat.check("bye.")
        expect(stat.percentage_good).to eq 50
    end
end 
