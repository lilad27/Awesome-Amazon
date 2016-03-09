class Category < ActiveRecord::Base
    has_many :books
    
    validates :name, uniqueness: true
    
    #searching for user query input
    def self.search(query)
        Category.where('name ILIKE ?', "%#{query}%")
    end
    
end
