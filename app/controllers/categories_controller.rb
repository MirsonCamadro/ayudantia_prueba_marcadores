class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
  end

  def create 
    @category = Category.new(category_params)
    respond_to do |f|
      if @category.save 
        f.html { redirect_to root_path, notice: "creaste"}
      else
        f.html { redirect_to root_path, alert: "boo"}
      end
    end
  end

  private 

  def category_params
    params.require(:category).permit(:name, :public, :category_id)
  end
end
