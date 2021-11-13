class ProductsController < ApplicationController
  def index
    @products = Product.all
    
  end

  def new
    @product = Product.new
    @product_types = ProductType.all
    @categories = Category.all
  end

  def show 
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    respond_to do |f|
      if @product.save 
        f.js { }
      else
        f.html { redirect_to root_path, alert: "boo"}
      end
    end
  end

  def edit  
    @product = Product.find(params[:id])
    @product_types = ProductType.all
    @categories = Category.all
  end

  def update 
    @product = Product.find(params[:id])
    respond_to do |f|
      if @product.update(product_params) 
        f.js { }
      else
        f.html { redirect_to root_path, alert: "boo"}
      end
    end
  end

  def destroy 
    @product = Product.find(params[:id])
    respond_to do |f|
      if @product.destroy!
        f.js { }
      else
        f.html { redirect_to root_path, alert: "boo"}
      end
    end
  end

  private

  def product_params 
    params.require(:product).permit(:name, :category_id, :product_type_id)
  end
end
