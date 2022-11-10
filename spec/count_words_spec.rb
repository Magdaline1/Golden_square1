require 'count_words'

describe 'count_words' do
  it "should return 3 if the string is one two three " do
    result = count_words("one two three")
    expect(result).to eq 3
  end
  
  it "should return 0 if the string is empty " do
    result = count_words(" ")
    expect(result).to eq 0
  end
end
