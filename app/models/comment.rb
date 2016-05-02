class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  
  validates :body, presence: true #validation of input into comments section
    validates :user, presence: true
    validates :product, presence: true
    validates :rating, numericality: { only_intiger: true }

end
