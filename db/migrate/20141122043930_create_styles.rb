class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.float :price
      t.text :thumbnail
      t.text :image

      t.timestamps
    end
  end
end
