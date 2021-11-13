class ProductTypesController < ApplicationController
  def index
    @product_types = ProductType.all
    @product_type = ProductType.new

    @products = Product.all
  end

  def create 
    @product_type = ProductType.new(product_type_params)
    respond_to do |f|
      if @product_type.save 
        f.html { redirect_to root_path, notice: "creaste"}
      else
        f.html { redirect_to root_path, alert: "boo"}
      end
    end
  end

  private 

  def product_type_params
    params.require(:product_type).permit(:name)
  end
end
