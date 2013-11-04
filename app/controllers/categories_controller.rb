require 'pry'

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
    if category_exists? params[:category][:name]
      flash['alert alert-error'] = 'La categor&iacute;a ya existe. No se ha vuelto a crear.'.html_safe
    else
      @category.save
      flash['alert alert-success'] = 'La categor&iacute;a se ha creado correctamente.'.html_safe
    end
    redirect_to admin_category_edit_path
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash['alert alert-success'] = 'La categor&iacute;a se ha actualizado satisfactoriamente.'.html_safe
      redirect_to admin_category_edit_path
    else
      flash['alert alert-error'] = 'Ha ocurrido un error. Int&eacute;ntelo nuevamente'.html_safe
      redirect_to edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash['alert alert-info'] = 'La categor&iacute;a se ha eliminado correctamente.'.html_safe
    redirect_to admin_category_edit_path
  end

  def category_exists?(c)
    category = Category.where(name: c).entries
    if category.size > 0
      return true
    else
      return false
    end
  end
end
