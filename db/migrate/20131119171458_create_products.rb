class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :stock_quantity
      t.integer :category_id
      t.string :description
      t.string :image_filename

      t.timestamps
    end
  end
end
