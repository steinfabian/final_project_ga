class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.string :name
      t.text :thumbnail
      t.text :image

      t.timestamps
    end
  end
end
