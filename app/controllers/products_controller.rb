class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  def my
    @products = current_user.products
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @products = @product.photos
  end

  # GET /products/new
  def new
    @product = current_user.products.build
  end

  # GET /products/1/edit
  def edit
    if current_user.id == @product.user.id
      @photos = @product.photos
    end
  end

  # POST /products
  # POST /products.json
  def create
    @product = current_user.products.build(product_params)

    respond_to do |format|
      if @product.save
        if params[:images]
          params[:images].each do |image|
            @product.photos.create(image: image)
          end
        end

        # @photos = @product.photos
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        if params[:images]
          params[:images].each do |image|
            @product.photos.create(image: image)
          end
        end
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :active, :category_id, :ad_type_id, :status_id, :condition_id, :user_id)
    end
end
