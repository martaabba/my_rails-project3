class Product < ActiveRecord::Base
    has_many :orders #Product model has_many orders--because many orders have the same product on them
    has_many :comments #Comments model has_has many comments--because one product can have many comments or reviews


    def average_rating
         comments.average(:rating).to_f
    end
end