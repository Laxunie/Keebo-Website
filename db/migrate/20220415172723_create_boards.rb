class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :kit
      t.string :switches
      t.string :stabilizers
      t.string :keycaps
      t.integer :price
      t.references :layout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
