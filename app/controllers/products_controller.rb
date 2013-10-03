class ProductsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def search
    @recommended_products = Product.all[0..10]
    @latest_products = Product.all[5..15]

  end

  def gifts
    @user = current_user
  end

  def mine
  end

end
