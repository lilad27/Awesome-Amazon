class Book < ActiveRecord::Base
    belongs_to :category
    validates :title,:description, uniqueness: true
    #returns most recent books
    def self.recent(limit = 5)
        @recent_books = Book.order('created_at desc').limit(limit)
    end
    #searching for user query input
    def self.search(query)
        Book.where("title ILIKE ? OR description ILIKE ?","%#{query}%", "%#{query}%")
    end
end
