class CreateCustomisations < ActiveRecord::Migration
  def change
    create_table :customisations do |t|
      t.integer :product_id
      t.integer :part_id
      t.integer :print_id
      t.integer :style_id

      t.timestamps
    end
  end
end
