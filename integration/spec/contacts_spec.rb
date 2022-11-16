require 'contact'

describe 'contacts' do
    it 'returns a list of contacts' do
        contacts = Contacts.new
        contacts.list
        expect(contacts.list).to eq []
    end
end