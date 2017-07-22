require 'rails_helper'

describe "destroy park route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 5)}

  before do
    park = Park.all.first
    delete "/api/v1/parks/#{park.id}"
  end

  it 'deletes a park' do
    expect(Park.all.size).to eq(4)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
