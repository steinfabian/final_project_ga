class AddKindToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :kind, :string
  end
end
