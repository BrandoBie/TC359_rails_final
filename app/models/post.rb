class Post < ActiveRecord::Base
  self.per_page = 10
  
  def self.search(query)
    return all if query.blank?
    where('LOWER(body) LIKE LOWER(?)', "%#{query}%")
  end
end
