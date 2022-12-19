# spec/models/book_spec.rb

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end

  describe ".create" do
    it "creates a new book with the correct attributes" do
      book = Book.create(title: "My Book", body: "This is the body of my book.")
      expect(book).to be_valid
      expect(book.title).to eq("My Book")
      expect(book.body).to eq("This is the body of my book.")
    end
  end
end
