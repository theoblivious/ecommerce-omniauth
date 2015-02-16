class PagesController < ApplicationController
  def index
  	@products = Product.all
  end

  def cart
  	@cart_sum = current_user.products.pluck(:price).inject(:+).to_f

  	@discount = User.discount.to_f
  	@discounted_cart_sum = @cart_sum *((100-@discount)/100).to_f	
  end

end

