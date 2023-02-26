require 'spec_helper'

RSpec.describe Library do
  let(:library)  {Library.new("Denver Public Library")}
  let(:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}
  let(:john_crowley) {Author.new({first_name: "John", last_name: "Crowley"})}

  it 'exists and has a name' do
    expect(library).to be_a(Library)
    expect(library.name).to eq("Denver Public Library")
  end

  it 'starts with no books and no authors' do
    expect(library.books).to eq([])
    expect(library.authors).to eq([])
  end

  it 'adds authors and their books' do
    jane_eyre = charlotte_bronte.write("Jane Eyre", "Octber 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")
    engine_summer = john_crowley.write("Engine_Summer", "1979")
    library.add_author(charlotte_bronte)

    expect(library.authors).to eq([charlotte_bronte])
    expect(library.books).to eq([jane_eyre, villette])

    library.add_author(john_crowley)

    expect(library.authors).to eq([charlotte_bronte, john_crowley])
    expect(library.books).to eq([jane_eyre, villette, engine_summer])
    expect(library.authors.first).to be_a(Author)
    expect(library.books.length).to eq(3)

  end
  it 'returns a publication time frame hash' do
    jane_eyre = charlotte_bronte.write("Jane Eyre", "Octber 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")
    engine_summer = john_crowley.write("Engine_Summer", "1979")

    expected = {
      start: "1847",
      end: "1853"
    }
    expect(library.publication_time_frame_for(charlotte_bronte)).to eq({
      start: "1847",
      end: "1853"
    })
    expect(library.publication_time_frame_for(john_crowley)).to eq({
      start: "1979",
      end: "1979"
    })
  end
end