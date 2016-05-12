require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  def contact_form
    UserMailer.contact_form("john@example.com", "John", "Hello World!")
  end  
end
