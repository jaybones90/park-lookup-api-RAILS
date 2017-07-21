class Park < ApplicationRecord
  validates :name, :city, :state, :category, :presence => true

end
