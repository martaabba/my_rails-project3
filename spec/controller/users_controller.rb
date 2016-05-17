require 'rails_helper'
    describe UsersController, :type => controller do
       
       
       before do
        @userA = User.create!(email: "usertest@gmail.com", password: "jane1234")
        @userB = User.create!(email: "testuser@gmail.com", password: "jordan1234")
       end
       
       describe "Get #show" do
          
          context "User is logged in" do
            before do
                sign_in(@userA)
            end
            it "Loads correct user details" do
                get :show, id: @userA.id
                expect(response).to have_http_status(200)
                expect(assigns(:user)).to eq (@userA)
            end
                
          context "No user is logged in" do
                it "redirects to login" do
                  get :show, id: @userA.id
                  expect(response).to redirect_to(root_path)
                end
                    
          end
        end
        
        describe "Unauthorized access" do
            before do
                sign_in(@userA)
            end
            
            context "Attempt to access show page of userB" do
                it "redirects to login" do
                    get :show, id: @userB.id
                    expect(response).to have_http_status(401)
                    expect(response).to redirect_to(root_path)
                end
            end
        end
    end
            

