class PurchasesController < ApplicationController
before_filter :authenticate_user! 
	
	def new
		# this makes a new cart item
		cart_item =current_user.user_products.new
		# this selects the cart_item based on the params 
		cart_item.product = Product.find(params[:id])
		# using a ternary to make sure it selects one by default
		cart_item.requested_quantity= params[:quantity] ? params[:quantity] : 1 
		if cart_item.save
			redirect_to root_path, notice: "added #{cart_item.product.title} has been added to your cart"
		else
			redirect_to :back, notice: "item wasnt added to your cart"
		end

	end
end
