class CategoriesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @category = Category.new(params[:category])
    @category.save
    flash.now[:info] = 'La categoria se ha creado correctamente.'
    redirect_to admin_category_edit_path
  end

  def update
  end

  def destroy
  end
end
