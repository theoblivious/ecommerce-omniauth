class RemoveLoginAndEmailNullValueFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :login, :email
  end
end
