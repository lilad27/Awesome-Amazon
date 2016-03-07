class Book < ActiveRecord::Base
    belongs_to :category
    
    #returns most recent books
    def self.recent(limit = 5)
        @recent_books = Book.order('created_at desc').limit(limit)
    end
end
