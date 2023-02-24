require 'spec_helper'


RSpec.describe Book do
  let(:book) { Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})}

  it 'exists and has a title' do
  expect(book).to be_a(Book)
  expect(book.title).to eq("To Kill a Mockingbird")
  end

  it 'has a an author and a publication year' do
    expect(book.author).to eq("Harper Lee")
    expect(book.publication_year).to eq("1960")
  end
end