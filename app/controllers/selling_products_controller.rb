class SellingProductsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  
  def mine
    @selling_products = current_user.selling_products
  end

 def show
    @selling_product = SelligProduct.where(:id => params[:id]).first
    if @selling_product == nil
      redirect_to '/my-products/', alert: 'No se encontro el producto'
    end
  end

  def new
  end

  def edit
    @selling_product = SelligProduct.where(:id => params[:id]).first
  end

  def create
  end

  def update
  end

  def destroy
    @selling_product = SelligProduct.where(:id => params[:id]).first
    @selling_product.destroy
  end

end
