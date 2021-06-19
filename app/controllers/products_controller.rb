class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  # before_action :set_selections, only: %i[ new edit create ]
  before_action :options

  # GET /products or /products.json
  def index
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    set_selections
  end

  # GET /products/1/edit
  def edit

  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
    set_selections

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: "Se ha creado exitosamente el registro de Producto." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Se han actualizado exitosamente los datos del artículo." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Se ha eliminado exitosamente el registro del artículo." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Set up all selections for form
    def set_selections
      @unidades = %w{ pieza metro rollo litro }
      @packages = %w{ caja tarima }
      @suppliers = Supplier.all
      @capitulos = Capitulo.all
      @conceptos = Concepto.all
      @partidas = Partida.all
    end
    

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:code, :name, :brand, :description, :unit, :package, :units_per_package, :last_price, :supplier_id, :capitulo_id, :concepto_id, :partida_id)
    end
end
