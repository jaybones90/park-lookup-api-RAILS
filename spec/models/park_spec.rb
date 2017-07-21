require 'rails_helper'

describe Park do
  it { should validate_presence_of :name }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :category }
end
