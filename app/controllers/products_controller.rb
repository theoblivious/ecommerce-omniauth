class ProductsController < ApplicationController
before_action :find_product, only: [:show]


#TODO: May not need this? 
def index
end


def show
end



private
def find_product
@product = Product.find(params[:id])
end


end
