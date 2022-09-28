require 'rails_helper'

RSpec.describe 'It is able to log in to a user', :vcr do
    it 'is able to return a responce when you give it the correct api key' do
        user_data = {
        "email": 'test',
        "password": 'test_password',
        "password_confirmation": 'test_password'
    }
    post '/api/v1/users', params: user_data

    parsed_user_body = JSON.parse(response.body, symbolize_names: true)
    api_key = parsed_user_body[:data][:attributes][:api_key]
    data = {
        "starting_location": 'Denver, CO',
        "destination": 'Los Angeles,CA',
        "api_key": api_key,
        "trip_time": 869696,
        }
    # post '/api/v1/road_trip', params: data

    expect(response).to be_successful
    result = JSON.parse(response.body, symbolize_names: true)
    data = result[:data]
    expect(data).to have_key(:id)
    expect(data).to have_key(:attributes)
    end
    describe 'sad path' do
    it "is able to fail when the user api key is false " do
        data = {
        "origin": 'Denver',
        "destination": 'Los Angeles,CA',
        "api_key": '1234'
        }

        post '/api/v1/road_trip', params: data

        expect(response).to_not be_successful
    end
 end
end