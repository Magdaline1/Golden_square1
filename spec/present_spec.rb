require 'present'

RSpec.describe Present do
    it "wraps and unwraps a value" do
        present = Present.new
        present.wrap(3)
        expect(present.unwrap).to eq 3
    end

    it "fails if nothing has been wrapped" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end

    it "fails if something has already been wrapped" do
        present = Present.new
        present.wrap(3)
        expect { present.wrap(4) }.to raise_error "A contents has already been wrapped."
    end
end