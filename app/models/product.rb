class Product < ActiveRecord::Base
    has_many :orders #Product model has_many orders--because many orders have the same product on them
end
