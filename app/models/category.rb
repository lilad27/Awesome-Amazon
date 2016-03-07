class Category < ActiveRecord::Base
    has_many :books
    validates :name, uniqueness: true
end
