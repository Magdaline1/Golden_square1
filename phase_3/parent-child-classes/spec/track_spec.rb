require 'track'

describe Track do
    it 'checks if a keyword matches the title or artist' do
        word = Track.new("track_1", "artist_2")
        expect(word.matches?("1")).to eq true
    end

    it 'returns false if theres no match' do
        word = Track.new("track_1", "artist_2")
        expect(word.matches?("hello")).to eq false
    end
end