#Unit testing peer classes

require 'secret_diary'
require 'diary'

describe 'integration' do
    it 'shows contents if unlocked' do
        diary_entry = Diary.new("some contents")
        secret_entry = SecretDiary.new(diary_entry)
        secret_entry.unlock
        expect(secret_entry.read).to eq "some contents"
    end

    it 'returns an error if locked' do
        diary_entry = Diary.new("some contents")
        secret_entry = SecretDiary.new(diary_entry)
        expect{ secret_entry.read }.to raise_error ("Go away!")
    end

    it 'returns an error if unlocked and then locked again' do
        diary_entry = Diary.new("some contents")
        secret_entry = SecretDiary.new(diary_entry)
        secret_entry.unlock
        secret_entry.lock
        expect{ secret_entry.read }.to raise_error ("Go away!")
    end
end
