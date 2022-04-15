class RenameColumnInLayout < ActiveRecord::Migration[7.0]
  def change
    rename_column :layouts, :size, :name
  end
end
