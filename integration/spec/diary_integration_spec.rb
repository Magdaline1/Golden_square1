require 'diary'
require 'contact'
require 'todo'

describe 'integration' do
    xit "lists contact information from diary contacts" do
        diary = Diary.new
        diary.add_entry("This is a phone number: 07414927478")
        diary.add_entry("Two phone numbers: 09876543210 12345678901")
        contacts = Contacts.new
        contacts.get_numbers(diary)
        contacts.list
        expect(contacts.list).to eq ["07414927478", "09876543210", "12345678901"]
    end

    it "shows a todo list" do #this may not be a test for integration as it only calls on 1 class - check later
        diary = Diary.new
        diary.add_todo("groceries")
        diary.add_todo("do dishes")
        diary.show_todo
        expect(diary.show_todo).to eq ["groceries", "do dishes"]
    end
end