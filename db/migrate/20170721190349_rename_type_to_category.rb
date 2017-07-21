class RenameTypeToCategory < ActiveRecord::Migration[5.1]
  def change
    rename_column :parks, :type, :category
  end
end
