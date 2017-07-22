require 'rails_helper'

describe "get park route", :type => :request do

  let!(:park) { FactoryGirl.create(:park)}


  before do
    get "/api/v1/parks/#{park.id}"
  end

  it 'returns a park' do
    expect(JSON.parse(response.body)['id']).to eq("#{park.id}".to_i)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
