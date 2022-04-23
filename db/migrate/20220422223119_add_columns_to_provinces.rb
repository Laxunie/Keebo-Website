class AddColumnsToProvinces < ActiveRecord::Migration[7.0]
  def change
    add_column :provinces, :PST, :integer
    add_column :provinces, :GST, :integer
    add_column :provinces, :HST, :integer
  end
end
