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
    @products = Product.all[0..50]
    @brand = @seller = @category  =  @price_from = @price_to = @free_text = @query = ""
    @brand_enable = @seller_enable = @category_enable  =  @price_enable = @free_text_enable = true

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
      filtered_selling_products = Seller.all.flat_map {|s| s.selling_products}
      if(!@price_from.blank?)
        filtered_selling_products = filtered_selling_products.select {|p| p.price >= @price_from.to_f}
      end
      if(!@price_to.blank?)
        filtered_selling_products = filtered_selling_products.select {|p| p.price < @price_to.to_f}
      end
      filtered_products = filtered_products & filtered_selling_products.map {|sp| sp.product}
    end
    @products = filtered_products
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
    @products = filtered_products
    render 'products/search'
  end


  def do_search_by_category
    @products = Product.any_in(category_ids: params[:category])
    @brand_enable = @seller_enable = @category_enable  =  @price_enable = @free_text_enable = true
    render 'products/search'
  end

end
