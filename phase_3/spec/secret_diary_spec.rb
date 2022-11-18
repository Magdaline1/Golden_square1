#Unit testing peer classes

require 'secret_diary'

describe SecretDiary do
    it 'returns an error if locked' do
        diary_entry = double :diary 
        secret_entry = SecretDiary.new(diary_entry)
        expect{ secret_entry.read }.to raise_error ("Go away!")
    end

    it 'shows contents if unlocked' do
        diary_entry = double :diary, read: "some contents"
        secret_entry = SecretDiary.new(diary_entry)
        secret_entry.unlock
        expect(secret_entry.read).to eq "some contents"
    end



end