class UserMailer < ApplicationMailer
    default from: "danika.stochosky@gmail.com"
    
    def contact_form(email, name, message)
    @message = message
        mail(:from => email, 
        :to => 'danika.stochosky@gmail.com',
        :subject => "A new contact form message from #{name}")
    end
    
    
    
    
  
end
