class CategoriesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(params[:category])
    @category.save
    flash[:info] = 'La categoria se ha creado correctamente.'
    redirect_to admin_category_edit_path
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:info] = 'La categoria se ha actualizado satisfactoriamente.'
      redirect_to admin_category_edit_path
    else
      flash[:info] = 'Ha ocurrido un error. Intentelo nuevamente'
      redirect_to edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:info] = 'La categoria se ha eliminado correctamente.'
    redirect_to admin_category_edit_path
  end
end
