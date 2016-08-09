class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @products = current_user.products
  end

  def show
  end

  def new
    @product = current_user.products.build
  end

  def create
    @product = current_user.products.build(product_params)

    if @product.save!
      redirect_to @product, notice: "Saved..."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Updated..."
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to my_products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def my
    @products = current_user.products
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :price, :active, :is_selling, :is_available, :is_new, :is_approved, :category_id)

    end
end
