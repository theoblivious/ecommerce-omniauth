class ProductsController < ApplicationController
before_filter :authenticate_user!
before_action :find_product, only: [:show]





def show
end



private
def find_product
@product = Product.find(params[:id])
end


end
