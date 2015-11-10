class AddOutlineIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :outline_id, :integer
  end
end
