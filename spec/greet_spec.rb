require 'greet'
describe 'greet' do
    it 'returns "Hello, Magdaline!" when passed name' do
        expect(greet("Magdaline")).to eq "Hello, Magdaline!"
    end
end
