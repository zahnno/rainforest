class ProductsController < ApplicationController

  def index
  	@products = Product.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = Product.find(params[:id])
  end
  
end
