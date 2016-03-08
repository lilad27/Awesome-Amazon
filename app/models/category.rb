class Category < ActiveRecord::Base
    has_many :books
    validates :name, uniqueness: true
    
    def self.search(search)
      where("name ILIKE ?", "%#{search}%") 
    end
end
