class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:articles).order(name: :asc)
  end
  
  
  def show
    @categories = Category.where(id: params[:id]).load
  end
  
end
  