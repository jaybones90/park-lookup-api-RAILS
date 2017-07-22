require 'rails_helper'

describe "update park route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 5)}


  it 'updates a park' do
    park = Park.all.first
    patch "/api/v1/parks/#{park.id}", params: { name: "test name", city: "test city", state: "test state", category: "national"}
    expect(Park.find(park.id).name).to eq("test name")
  end

  it 'updates a park' do
    park = Park.all.first
    patch "/api/v1/parks/#{park.id}", params: { name: "test name", city: "test city", state: "test state", category: "national"}
    expect(response).to have_http_status(:success)
  end


end
