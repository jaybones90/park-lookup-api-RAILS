require 'rails_helper'

describe "search by name route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 5)}



  it 'returns parks with the correct name' do
    park = Park.all.first
    get "/api/v1/parks?name=#{park.name}"
    expect(JSON.parse(response.body)[0]['name']).to eq("#{park.name}")
  end

  it 'returns status code 200' do
    park = Park.all.first
    get "/api/v1/parks?name=#{park.name}"
    expect(response).to have_http_status(:success)
  end

end
