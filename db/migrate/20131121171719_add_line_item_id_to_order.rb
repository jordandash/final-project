class AddLineItemIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :line_item_id, :integer
  end
end
