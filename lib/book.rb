class Book
  attr_reader :title, 
              :author,
              :author_first_name,
              :author_last_name,
              :publication_date
  
  def initialize(info)
    @title = info[:title]
    @author_first_name = info[:author_first_name]
    @author_last_name = info[:author_last_name]
    @author = "#{@author_first_name} #{@author_last_name}"
    @publication_date = info[:publication_date]
    @publication_year = info[:publication_date].split.last
  end

  # def author
  #   "#{@author_first_name} #{ @author_last_name}"
  # end

  def publication_year
    @publication_date.split[-1]
  end
end
