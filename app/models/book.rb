class Book < ApplicationRecord
    #Validation for all attributes
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :published, presence: true
end
