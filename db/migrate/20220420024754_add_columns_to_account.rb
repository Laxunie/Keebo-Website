class AddColumnsToAccount < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :address, :string
    add_column :accounts, :postalcode, :string
  end
end
