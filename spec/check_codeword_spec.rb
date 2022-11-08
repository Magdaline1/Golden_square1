require "check_codeword"

RSpec.describe "check_codeword method" do
  it "returns correct message" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns close message" do
    result = check_codeword("home")
    expect(result).to eq "Close, but nope."
  end

    it "returns incorrect codeword" do
        result = check_codeword("dog")
        expect(result).to eq "WRONG!"
    end
end