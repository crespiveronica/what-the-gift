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

  def sellone
    @product = Product.where(:id => params[:id]).first
  end

  def create
    if params[:categories].nil?
      message = 'El producto debe tener al menos una categor&iacute;a. Vuelva a ingresar los datos por favor.'.html_safe
    else
      if params[:id_product] == nil
        product  = Product.new
        product.name = params[:name]
        product.description = params[:description]
        product.brand = params[:brand]
        product.categories = params[:categories].map{ |id| Category.where(id: id).first}
        product.photo_url = params[:photo]
        product.save
      else 
        product = Product.where(:id => params[:id_product]).first
      end
      selling_product = SellingProduct.new
      selling_product.product = product
      selling_product.seller = current_user
      selling_product.price = params[:price]
      selling_product.save
      message = 'Se ha creado el nuevo producto satisfactoriamente.'
    end

    redirect_to '/my-products/', alert: message
  end

  def update
    @selling_product = SellingProduct.where(:id => params[:id]).first
    @selling_product.price = params[:price]
    @selling_product.save
    redirect_to '/my-products/', alert: 'La modificaci&oacute;n se realiz&oacute; con &eacute;xito.'.html_safe
  end

  def destroy
    @selling_product = SellingProduct.where(:id => params[:id]).first
    @selling_product.destroy
    redirect_to '/my-products/', alert: 'Se ha eliminado el producto satisfactoriamente.'
  end

  def upload
    begin
      selling_products_json = MultiJson.load(params[:product_file])
      products_list_json =  selling_products_json['productos']
      validate_empty_fields products_list_json
      selling_products = create_selling_products_from_json products_list_json
    rescue ParsingFileError => error
      redirect_to '/my-products/', alert: error.message
    rescue
      default_msg = 'El formato del archivo es incorrecto, por favor corr&iacute; y vuelva a cargarlo.'
      redirect_to '/my-products/', alert: default_msg
    else
      save_selling_products selling_products
      redirect_to '/my-products/', alert: 'Se han creado los nuevos productos.'
    end
  end

  def validate_empty_fields list
    empty_fields = empty_fields_from list
    if !empty_fields.empty?
      raise ParsingFileError.newEmtpyFields(empty_fields);
    end
  end

  def empty_fields_from sps_json
    empty_fields = []
    sps_json.each do |sp|
      required_fields_for_file.each do |field_name|
        if is_null_or_empty sp[field_name]
          empty_fields << field_name
        end
      end
    end
    empty_fields.uniq
  end

  def required_fields_for_file
    ['nombre','descripcion', 'marca', 'url_foto', 'precio', 'categorias']
  end

  def is_null_or_empty field
    field.nil? || field.empty?
  end

  def create_selling_products_from_json selling_products_json
    sp_list = []
    selling_products_json.each do |sp|
        selling_product = SellingProduct.from_json sp
        selling_product.seller = current_user
        sp_list << selling_product
      end
    sp_list
  end

  def save_selling_products selling_products
    selling_products.each do |sp|
        sp.product.save
        sp.save
      end
  end

end
