require 'rails_helper'

describe Product do
    context "when a product has comments" do
        before do
            @product = Product.create!(name: "saucy")
            @user = User.create!(email: "bob@gmail.com", password: "clarke1")
            @product.comments.create!(rating: 1, user: @user, body: "stinky!")
            @product.comments.create!(rating: 3, user: @user, body: "Less stinky.")
            @product.comments.create!(rating: 5, user: @user, body: "Lurvely!")
        end
        
        it "expect the product's average rating to equal 3" do
            expect(@product.average_rating).to eq 3
        end
    
        it "is not valid" do
            expect(Product.new(description: "Horrible")).not_to be_valid
        end
    end
  
end