class PagesController < ApplicationController
  def index
  	@products = Product.all
  end

  def cart
  	@cart_sum = current_user.products.pluck(:price).inject(:+).to_f
  end

end

