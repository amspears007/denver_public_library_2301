class Book
  attr_reader :title, 
              :author_first_name,
              :author_last_name,
              :publication_date
  
  def initialize(info)
    @title = info[:title]
    # require 'pry'; binding.pry
    @author_first_name = info[:author_first_name]
    @author_last_name = info[:author_last_name]
    @publication_date = info[publication_date]
  end

  def author
    "#{@author_first_name} #{ @author_last_name}"
  end
end
