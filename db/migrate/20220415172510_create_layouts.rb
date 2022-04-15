class CreateLayouts < ActiveRecord::Migration[7.0]
  def change
    create_table :layouts do |t|
      t.string :size

      t.timestamps
    end
  end
end
