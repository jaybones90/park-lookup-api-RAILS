require 'rails_helper'

describe "get all parks route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 10)}

  before { get '/api/v1/park/random' }

  it 'returns a random park' do
    park = Park.find(JSON.parse(response.body)['id'])
    expect(park).to have_attributes(:name => "#{park.name}")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
