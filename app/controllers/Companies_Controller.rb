class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create!(company_params.merge(user: current_user))
    redirect_to (company_path(@company))

  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)

    redirect_to @company
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end


  private
  def company_params
    params.require(:company).permit(:name, :category, :location, :logo_url)
  end

end
