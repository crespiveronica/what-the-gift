class AdminsController < ApplicationController

  def index
    @admins = Admin.all
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
  end

  def category_edit
    redirect_to '/categories'
  end

  def user_edit
    @users = User.paginate(:page => params[:page], :per_page => 30)
  end

  def login
  end

end
