class AddCityToParks < ActiveRecord::Migration[5.1]
  def change
    add_column :parks, :city, :string
    rename_column :parks, :location, :state
  end
end
