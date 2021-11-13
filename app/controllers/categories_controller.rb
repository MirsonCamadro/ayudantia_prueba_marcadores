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

  def update 
    @category = Category.find(params[:id])
    @category.public = @category.subcategories.public
    respond_to do |f|
      if @category.update!(categry_params) 
        f.html { redirect_to root_path, notice: "creaste"}
      else
        f.html { redirect_to root_path, alert: "boo"}
      end
    end
  end

  def api
    @category = Category.find(params[:id])
    render json: @category.to_json(include: [:subcategories, :products])
  end

  private 

  def category_params
    params.require(:category).permit(:name, :public, :category_id)
  end
end
