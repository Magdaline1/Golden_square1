require 'grammar_checker'

describe 'grammar_checker' do
    it "checks a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark" do
        result = grammar_checker("hello WORLD")
        expect(result).to eq false
    end
end
