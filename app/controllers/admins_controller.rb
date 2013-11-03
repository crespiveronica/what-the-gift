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

  def product_edit
    @selling_products = SellingProduct.unscoped.paginate(:page => params[:page], :per_page => 30)
  end

  def category_edit
    @new_category = Category.new
    @categories = Category.paginate(:page => params[:page], :per_page => 30)
  end

  def user_edit
    @users = User.paginate(:page => params[:page], :per_page => 30)
  end

  def seller_edit
    @sellers = Seller.paginate(:page => params[:page], :per_page => 30)
  end

  def login
  end

end