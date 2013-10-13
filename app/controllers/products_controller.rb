class ProductsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
  end

  def show
    @product = Product.where(:id => params[:id]).first
    if @product == nil
      redirect_to products_list_path, alert: 'No se encontro el producto'
    end
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

  def wishlist
    @product = Product.where(:id => params[:id]).first
    if @product
      current_user.wishlist << @product
      redirect_to product_path, alert: 'El regalo fue agregado a tu Wish List'
    else
      redirect_to products_list_path, alert: 'No se encontro el producto'
    end
  end

  def rate
    @gift = current_user.gifts.where(:id => params[:id]).first
    @gift.score = params[:score] != '' ? params[:score] : 0
    @gift.save
    redirect_to gifts_path, alert: 'Se ha calificado su regalo satisfactoriamente'
  end

end
