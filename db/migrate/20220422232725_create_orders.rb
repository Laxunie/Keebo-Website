class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :account, null: false, foreign_key: true
      t.float :subtotal
      t.float :tax
      t.float :total

      t.timestamps
    end
  end
end
