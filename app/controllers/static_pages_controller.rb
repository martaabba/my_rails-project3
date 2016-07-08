class StaticPagesController < ApplicationController
  
  
  def landing_page
    @products = Product.limit(3)
    Rails.cache.write("foo", "bar")
    puts Rails.cache.read("foo")
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'danika.stochosky@gmail.com',
      :subject => "A new contact form message from #{@name}", 
      :body => @message).deliver_now
  end
 



end


