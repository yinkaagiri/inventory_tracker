class ProductsController < ApplicationController
  before_action :authenticate_user!

def index
  @company = Company.find(params[:company_id])
  @products = @company.products
end

def show
  @product = Product.find(params[:id])
end

def new
  @company = Company.find(params[:company_id])
  @product = Product.new
end

def create
  @company = Company.find(params[:company_id])
  @product = @company.products.create!(product_params)
  redirect_to company_products_path
end

def edit
  @product = Product.find(params[:id])
end

def destroy
  redirect_to root_path unless
  @product = Product.find(params[:id])
  @product.destroy
  redirect_to products_path
end

private
def product_params
  params.require(:product).permit(:name, :description, :price, :inventory, :vendor)
end

end
