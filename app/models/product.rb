class Product < ActiveRecord::Base
	has_many :users, through: :user_products
	has_many :user_products
end
