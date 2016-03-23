class ProductsController < ApplicationController

def index
  @company = Company.find(params[:company_id])
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

private
def product_params
  params.require(:product).permit(:name, :description, :price, :vendor_id)
end

end
