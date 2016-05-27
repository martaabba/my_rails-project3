FactoryGirl.define.do
    sequence(:email) { |n| "user#{n}@example.com" } 
    
    factory :user do
        email "peter@example.com"
        password "123456789"
        first_name "Peter"
        last_name "Doe"
        admin false
    end
    
    factory :admin, class: User do
        email "peter2@example.com"
        password "qwertyuiop"
        admin "true"
        first_name "Admin"
        last_name "User"
    end
end
    


