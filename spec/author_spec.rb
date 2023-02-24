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
end