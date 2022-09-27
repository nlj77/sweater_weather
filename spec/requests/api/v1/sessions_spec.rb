require 'rails_helper'

RSpec.describe 'it can render a session ' do
    before :each do
        user = {
        username: 'test@test.com',
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
        "username": "test@test.com",
        "password": "test"
        }

        post '/api/v1/sessions', params: login

        expect(response).to be_successful
    end

end