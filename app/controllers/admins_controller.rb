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

  # DELETE /admins/1
  # DELETE /admins/1.json
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
  end

  def login
  end

end
