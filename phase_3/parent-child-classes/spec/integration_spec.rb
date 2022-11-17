require 'music_library'
require 'track'

describe MusicLibrary do
    it 'adds a track to the library' do
        library = MusicLibrary.new
        track_1 = Track.new("track_1", "artist_1")
        library.add(track_1)
        expect(library.all).to eq [track_1]
    end

    it 'returns a list of tracks that match the keyword' do
        library = MusicLibrary.new
        track_1 = Track.new("track_1", "artist_1")
        track_2 = Track.new("track_2", "artist_2")
        library.add(track_1)
        library.add(track_2)
        expect(library.search("1")).to eq [track_1]
    end
end