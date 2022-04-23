class CreateOrderProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :order_products do |t|
      t.references :board, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
