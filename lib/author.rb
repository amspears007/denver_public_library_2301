class Author
  attr_reader :first_name, 
              :last_name,
              :books

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
  end

  def name
    "#{@first_name} #{ @last_name}"
  end

  def write(title, publication_date)
    book_hash = {
      title: "Jane Eyre",
      publication_date: "October 16, 1847"
    }

    Book.new(book_hash)
  end
end
