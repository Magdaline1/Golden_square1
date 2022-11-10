require 'check_text'

describe 'check_text' do
    it "checks if a string includes #TODO" do
    result = check_text("#TODO list")
    expect(result).to eq true
    end

    it "checks if a string includes #TODO when writtten in lowercase" do
    result = check_text("things #todo")
    expect(result).to eq false
    end

    it "checks if a string includes #TODO when written without hashtag, in lowercase" do
    result = check_text("To do: get groceries")
    expect(result).to eq false
    end
end
