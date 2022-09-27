require 'rails_helper'

RSpec.describe 'it can render a session ' do
    before :each do
        user = {
        email: 'test@test.com',
        password: 'test',
        password_confirmation: 'test'
        }

        post '/api/v1/users', params: user

    end

    it "returns a user" do
        expect(User.count).to eq(1)
    end

    it "is able to get login, post, and create a session" do
        login = {
        "email": "test@test.com",
        "password": "test"
        }

        post '/api/v1/sessions', params: login

        expect(response).to be_successful
    end

    it "can handle invalid logins" do
        login = {
        "email": "",
        "password": "test"
        }

        post '/api/v1/sessions', params: login

        expect(response).to_not be_successful
    
    end

    it "can handle invalid passwords" do
        login = {
        "email": "test",
        "password": ""
        }

        post '/api/v1/sessions', params: login

        expect(response).to_not be_successful
    end

end