require 'rails_helper'

describe "create a park route", :type => :request do

  before do
    post '/parks', params: { name: "test name", city: "test city", state: "test state", category: "national"}
  end

  it 'returns the parks name' do
    expect(JSON.parse(response.body)['name']).to eq('test name')
  end

  it 'returns the parks city' do
    expect(JSON.parse(response.body)['city']).to eq('test city')
  end

  it 'returns the parks state' do
    expect(JSON.parse(response.body)['state']).to eq('test state')
  end

  it 'returns the parks category' do
    expect(JSON.parse(response.body)['category']).to eq('national')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end
