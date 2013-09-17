class SellersController < ApplicationController

  def index
  end

  def show
    @seller = Seller.find(params[:id])
    render 'profile/seller.html'
  end

  def new
    @seller = Seller.new
  end

  def edit
  end

  def create
    @seller = Seller.new(params[:seller])
    if @seller.save
      sign_in @seller
      flash[:success] = "Bienvenido!" # No funciona el flash
      redirect_to @seller
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end
end
