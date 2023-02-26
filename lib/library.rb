class Library
  attr_reader :name,
              :books,
              :authors
 
  def initialize(name)
    @name = name
    @books = []
    @authors = []

  end

  def add_author(author)
    @authors << author
    author.books.each do|book|
      @books << book
      #or .map will work also
      #other solution
      # @books.concat(author.books)
      #@authors << author
    end
  end

  def publication_time_frame_for(author)
    book_year = author.books.map do |books|
      books.publication_year.to_i
    end
    pub_year = book_year.sort
    {start: pub_year.first.to_s, end: pub_year.last.to_s}
  end

  #another solution 
  # def publication_time_frame_for(author)
  #   earliest = author.books.min_by do |book|
  #     book.publication_year.to_i
  #   end
  #   latest = author.books.max_by do |book|
  #     book.publication_year.to_i
  #   end
  #   # require 'pry'; binding.pry
  #   {start: earliest.publication_year.to_s, end: latest.publication_year.to_s}

  # end
end
