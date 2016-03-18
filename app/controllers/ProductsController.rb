class ProductsController < ApplicationController

def index
  @products = Product.all
end

def show
  @product = Product.find(params[:id])
end

def new
  @company = Company.find(params[:company_id])
  @product = @company.products.create!(product_params)
end

def edit
  @product.find(params[:id])
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy

end



end
