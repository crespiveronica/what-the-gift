class AdminsController < ApplicationController

  def index
    if !signed_in?
      redirect_to admin_login_path
    end
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def create
    @admin = Admin.new(params[:admin])
  end

  def update
    @admin = Admin.find(params[:id])
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
  end

  def selling_product_edit
    @selling_products = SellingProduct.unscoped.for_admin.paginate(:page => params[:page], :per_page => 30)
  end

  def category_edit
    @new_category = Category.new
    @categories = Category.paginate(:page => params[:page], :per_page => 30)
  end

  def user_edit
    @users = User.unscoped.for_admin.paginate(:page => params[:page], :per_page => 30)
  end

  def seller_edit
    @sellers = Seller.unscoped.for_admin.paginate(:page => params[:page], :per_page => 30)
  end

  def login
  end

  def disable_selling_product
    @product = SellingProduct.find(params[:id])
    @product.banned = true
    @product.banned_reason = params[:selling_product][:banned_reason]
    @product.save
    flash[:info] = "Producto rechazado."
    ProductMailer.publication_result(@product).deliver
    redirect_to admin_selling_product_edit_path
  end

  def enable_selling_product
    @product = SellingProduct.unscoped.find(params[:id])
    @product.banned = false
    @product.banned_reason = nil
    @product.save
    flash[:info] = "Producto aprobado."
    ProductMailer.publication_result(@product).deliver
    redirect_to admin_selling_product_edit_path
  end

  def disable_seller
    @user = Seller.find(params[:id])
    @user.banned = true
    @user.banned_reason = params[:seller][:banned_reason]
    @user.save
    redirect_to admin_seller_edit_path, alert: 'El usuario ha sido deshabilitado.'
  end

  def enable_seller
    @user = Seller.unscoped.find(params[:id])
    @user.banned = false
    @user.banned_reason = nil
    @user.save
    redirect_to admin_seller_edit_path, alert: 'El usuario ha sido habilitado.'
  end

  def disable_user
    @user = User.find(params[:id])
    @user.banned = true
    @user.banned_reason = params[:user][:banned_reason]
    if @user.save
      flash[:info] = "El usuario ha sido deshabilitado."
      UserMailer.inform_state(@user).deliver
    else
      flash[:info] = "No se ha podido deshabilitar al usuario."
    end
    redirect_to admin_user_edit_path
  end

  def enable_user
    @user = User.unscoped.find(params[:id])
    @user.banned = false
    @user.banned_reason = nil
    if @user.save
      flash[:info] = "El usuario ha sido habilitado."
      UserMailer.inform_state(@user).deliver
    else
      flash[:info] = "No se ha podido reactivar al usuario."
    end
    redirect_to admin_user_edit_path
  end


end