class AddColumnToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :quantity, :integer
  end
end
