class AddColumnToBoards < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :image_path, :string
  end
end
