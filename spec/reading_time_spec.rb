require 'reading_time'

describe 'reading_time' do
    it "returns a users reading time" do
        result = reading_time(400)
        expect(result).to eq "2.0 minutes"
    end
    it "returns a users reading time" do
      result = reading_time(100)
      expect(result).to eq "0.5 minutes"
  end
end