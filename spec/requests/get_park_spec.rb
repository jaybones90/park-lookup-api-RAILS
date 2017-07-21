require 'rails_helper'

describe "get park route", :type => :request do

  let!(:parks) { FactoryGirl.create_list(:park, 5)}


  before do
    park = Park.all.first
    get "/parks/#{park.id}"
  end

  it 'returns a park' do
    expect(JSON.parse(response.body).size).to eq(7)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
