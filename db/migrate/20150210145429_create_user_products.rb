class CreateUserProducts < ActiveRecord::Migration
  def change
    create_table :user_products do |t|
      t.references :user, index: true
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_products, :users
    add_foreign_key :user_products, :products
  end
end
