class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :kind
      t.string :name
      t.string :size
      t.integer :order_id
      t.text :image
      t.float :price

      t.timestamps
    end
  end
end
