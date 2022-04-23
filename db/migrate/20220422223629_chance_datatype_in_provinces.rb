class ChanceDatatypeInProvinces < ActiveRecord::Migration[7.0]
  def change
    change_column :provinces, :PST, :float
    change_column :provinces, :GST, :float
    change_column :provinces, :HST, :float
  end
end
