class CreateParksTable < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.column :name, :string
      t.column :location, :string
      t.column :type, :string

      t.timestamps
    end
  end
end
