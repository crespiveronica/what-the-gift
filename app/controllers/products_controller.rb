require 'will_paginate/array'

class ProductsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
  end

  def show
    @product = Product.where(:id => params[:id]).first
    if @product == nil
      flash['alert alert-error'] = 'No se encontr&oacute; el producto'.html_safe
      redirect_to search_product_path
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
    @products = Product.all.paginate(:page => params[:page], :per_page => 10, total_entries: 50)
    @brand = @seller = @category  =  @price_from = @price_to = @free_text = @query = ""
    @brand_enable = @seller_enable = @category_enable  =  @price_enable = @free_text_enable = true
  end

  def gifts
    @user = current_user
    @gifts = @user.gifts.paginate(:page => params[:page], :per_page => 10)
  end

  def wishlist
    @product = Product.where(:id => params[:id]).first
    if @product
      current_user.wishlist << @product
      flash['alert alert-success'] = 'El regalo fue agregado a tu Wish List'
      redirect_to product_path
    else
      flash['alert alert-error'] = 'No se encontr&oacute; el producto'.html_safe
      redirect_to search_product_path
    end
  end

  def remove_from_wishlist
    @product = Product.where(:id => params[:id]).first
    if @product
      current_user.wishlist.delete @product
      flash['alert alert-info'] = 'El regalo fue borrado de tu Wish List'
      redirect_to product_path
    else
      flash['alert alert-error'] = 'No se encontr&oacute; el producto'.html_safe
      redirect_to search_product_path
    end
  end

  def product_add_to_gifts
    product = Product.where(:id => params[:id]).first
    if product
      gift = Gift.new
      gift.product = product
      current_user.gifts << gift
      current_user.wishlist.delete(product)
      flash['alert alert-success'] = 'El regalo fue agregado a tu lista de regalos recibidos'
      redirect_to product_path
    else
      flash['alert alert-error'] = 'No se encontr&oacute; el producto'.html_safe
      redirect_to search_product_path
    end
  end

  def rate
    @gift = current_user.gifts.where(:id => params[:id]).first
    @gift.score = params[:score] != '' ? params[:score] : 0
    @gift.save
    productlist = params[:productlist]
    flash['alert alert-success'] = 'Se ha calificado su regalo satisfactoriamente'
    if productlist != nil and productlist
      redirect_to search_product_path
    else
      redirect_to user_path(current_user.id)
    end
  end

  def do_advanced_search
    load_filter params
    filtered_products = Product.all
    if( !@brand_enable.blank? && !@brand.blank?)
      filtered_products = filtered_products.where({ :brand => /.*#{@brand}.*/i })
    end
    if( !@category_enable.blank? && !@category.blank?)
      ids = Category.where({ :name => /.*#{@category}.*/i }).map {|c| c.id}
      filtered_products = filtered_products.any_in(category_ids: ids)
    end
    if( !@free_text_enable.blank? && !@free_text.blank?)
      filtered_products = filtered_products.full_text_search( @free_text.split , match: :any , relevant_search: true)
    end
    if( !@seller_enable.blank? && !@seller.blank?)
      sellerProducts = Seller.where({ :company_name => /.*#{@seller}.*/i }).flat_map {|s| s.selling_products}.map {|sp| sp.product}
      filtered_products = (filtered_products & sellerProducts).uniq
    end
    if( !@price_enable.blank? & (!@price_from.blank? || !@price_to.blank?))
      filtered_selling_products = SellingProduct.all
      if(!@price_from.blank?)
        filtered_selling_products = filtered_selling_products.where(:price.gt =>@price_from.to_f)
      end
      if(!@price_to.blank?)
        filtered_selling_products = filtered_selling_products.where(:price.lt =>@price_to.to_f)
      end
      filtered_products = filtered_products & filtered_selling_products.map {|sp| sp.product}
    end
    @products = filtered_products.paginate(:page => params[:page], :per_page => 10)
    render 'products/search'
  end

  def load_filter params
    @brand = params[:brand]
    @seller = params[:seller]
    @category  = params[:category]
    @price_from = params[:price_from]
    @price_to = params[:price_to]
    @query = params[:query]
    @free_text = params[:free_text].blank? ? @query : params[:free_text]
    @brand_enable = params[:brand_enable]
    @seller_enable = params[:seller_enable]
    @category_enable  = params[:category_enable]
    @price_enable = params[:price_enable]
    @free_text_enable = params[:free_text_enable]
  end

  def do_search
    load_filter params
    filtered_products = Product.all
    if !@query.blank?
      filtered_products = filtered_products.full_text_search( @query.split , match: :any , relevant_search: true)
      @free_text = @query
    end
    @products = filtered_products.paginate(:page => params[:page], :per_page => 10)
    render 'products/search'
  end

  def do_search_by_category
    @products = Product.any_in(category_ids: params[:category]).paginate(:page => params[:page], :per_page => 10)
    @brand_enable = @seller_enable = @category_enable  =  @price_enable = @free_text_enable = true
    render 'products/search'
  end

end
