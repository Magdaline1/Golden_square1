require 'make_snippet'

describe 'make_snippet' do
    it "returns the first five words" do
        result = make_snippet("Hello my name is Magdaline")
        expect(result).to eq "Hello my name is Magdaline"
    end

    it "returns '...' if there's more than 5 words" do
        result = make_snippet("This is more than five words")
        expect(result).to eq "This is more than five ..."
    end
end
