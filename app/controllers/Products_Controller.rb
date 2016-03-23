class ProductsController < ApplicationController

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
  @product = Product.find(params[:id])
  @product.destroy
end

private
def product_params
  params.require(:product).permit(:name, :description, :price, :vendor_id)
end

end
