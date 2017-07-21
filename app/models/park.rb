class Park < ApplicationRecord
  validates :name, :city, :state, :category, :presence => true

  scope :search, -> (name) { where('name like ?', "%#{name}%")}

end
