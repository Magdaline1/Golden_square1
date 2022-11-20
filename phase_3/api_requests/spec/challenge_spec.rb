require 'challenge'

describe CatFacts do
    it "returns a random cat fact" do
        fake_requester = double :requester
        allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")
        ).and_return('{"fact":"Neutering a cat extends its life span by two or three years.","length":60}')
        cat_fact = CatFacts.new(fake_requester)
        expect(cat_fact.provide).to eq "Cat fact: Neutering a cat extends its life span by two or three years."
    end
end
