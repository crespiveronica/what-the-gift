class SellingProductsController < ApplicationController
  skip_before_filter  :verify_authenticity_token


  def mine
    @selling_products = current_user.selling_products
  end

 def show
    @selling_product = SellingProduct.where(:id => params[:id]).first
    if @selling_product == nil
      redirect_to '/my-products/', alert: 'No se encontr&oacute; el producto'.html_safe
    end
  end

  def new
  end

  def edit
    @selling_product = SellingProduct.where(:id => params[:id]).first
  end

  def create
    product  = Product.new
    product.name = params[:name]
    product.description = params[:description]
    product.brand = params[:brand]
    product.categories = params[:categories].map{ |id| Category.where(id: id).first}
    product.photo_url = params[:photo]
    product.save
    selling_product = SellingProduct.new
    selling_product.product = product
    selling_product.seller = current_user
    selling_product.price = params[:price]
    selling_product.save
    redirect_to '/my-products/', alert: 'Se ha creado el nuevo producto'
  end

  def update
    @selling_product = SellingProduct.where(:id => params[:id]).first
    @selling_product.price = params[:price]
    @selling_product.save
    redirect_to '/my-products/', alert: 'La modificaci&oacute;n se realizo con exito'.html_safe
  end

  def destroy
    @selling_product = SellingProduct.where(:id => params[:id]).first
    @selling_product.destroy
    redirect_to '/my-products/', alert: 'Se ha eliminado el producto'
  end

  def approve
    @sp = SellingProduct(params[:id])
    @sp.approved = true
    @sp.pending = false
    @sp.save
  end

  def reject
    @sp = SellingProduct(params[:id])
    @sp.pending = false
    @sp.approved = false
    @sp.save
  end

end
