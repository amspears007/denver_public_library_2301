require 'spec_helper'

RSpec.describe Book do
  it 'exists and has a title' do
  book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

  expect(book).to be_a(Book)
  expect(book.title).to eq("To Kill a Mockingbird")
  end
end