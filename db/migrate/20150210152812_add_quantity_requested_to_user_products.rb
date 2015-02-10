class AddQuantityRequestedToUserProducts < ActiveRecord::Migration
  def change
    add_column :user_products, :requested_quantity, :integer
  end
end
