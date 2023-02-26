require 'spec_helper'

RSpec.describe Author do
  let(:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}

  it 'exists, has a name and starts with no books' do
    expect(charlotte_bronte).to be_a(Author)
  end

  it 'has a name and starts with no books' do
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    expect(charlotte_bronte.books).to eq([])
  end

  it 'can write books' do
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")

    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
    expect(charlotte_bronte.books).to eq([jane_eyre, villette])
  end
end