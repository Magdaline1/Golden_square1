#Unit testing peer classes

require 'diary'

describe Diary do
    it 'returns the contents of a diary' do
        diary = Diary.new("some contents")
        expect(diary.read). to eq "some contents"
    end

    it 'returns an empty string if there are no contents' do
        diary = Diary.new("")
        expect(diary.read). to eq ""
    end
end