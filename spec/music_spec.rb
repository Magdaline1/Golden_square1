require 'music'

describe Music do
    it "returns an empty list" do
        song = Music.new
        result = song.list
        expect(result).to eq "Songs I've listened to: "
    end

    it "lists songs that have been listened to" do
        song = Music.new
        song.add("Happy")
        expect(song.list).to eq "Songs I've listened to: Happy"
    end

    it "adds another song to the list" do
        song = Music.new
        song.add("Happy")
        song.add("Love")
        result = song.list
        expect(result).to eq "Songs I've listened to: Happy, Love"
    end
end