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

  def do_search
    filtered_products = Product.all
    if( !params[:brand_enable].blank? && !params[:brand].blank?)
      filtered_products = filtered_products.where({ :brand => /.*#{params[:brand]}.*/i })
    end
    if( !params[:seller_enable].blank? && !params[:seller].blank?)
      sellerProducts = Seller.where({ :company_name => /.*#{params[:seller]}.*/i }).map {|s| s.selling_products}.map {|sp| sp.product}
      filtered_products = (filtered_products & sellerProducts).uniq
    end
    if( !params[:category_enable].blank? && !params[:category].blank?)
      ids = Category.where({ :name => /.*#{params[:category]}.*/i }).map {|c| c.id}
      filtered_products = filtered_products.any_in(category_ids: ids)
    end
    if( !params[:price_enable].blank? & (!params[:price_from].blank? || !params[:price_to].blank?))
      filtered_selling_products = SellingProduct.all
      if(!params[:price_from].blank?)
        filtered_selling_products = filtered_selling_products.where(:price.gt => params[:price_from])
      end
      if(!params[:price_to].blank?)
        filtered_selling_products = filtered_selling_products.where(:price.lt => params[:price_to])
      end
      filtered_products = filtered_products & filtered_selling_products.map {|sp| sp.product}
    end
    if( !params[:free_text_enable].blank? && !params[:free_text].blank?)
      filtered_products = filtered_products.full_text_search( params[:free_text].split , match: :any , relevant_search: true)
    end
    @products = filtered_products
    render 'products/search'
  end

  def do_search_by_category
    @products = Product.any_in(category_ids: params[:category])
    render 'products/search'
  end

end
