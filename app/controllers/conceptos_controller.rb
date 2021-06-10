class ConceptosController < ApplicationController
  before_action :set_concepto, only: [:show, :edit, :update, :destroy]
  before_action :options

  # GET /conceptos
  def index
    @concepto = Concepto.new
    @conceptos = Concepto.all
    @capitulos = Capitulo.all
  end

  # GET /conceptos/1
  def show
  end

  # GET /conceptos/new
  def new
    @concepto = Concepto.new
  end

  # GET /conceptos/1/edit
  def edit
  end

  # POST /conceptos
  def create
    @capitulos = Capitulo.all
    @concepto = Concepto.new(concepto_params)

    if @concepto.save
      redirect_to conceptos_path, notice: 'Se ha creado exitosamente el Concepto.'
    else
      render :new
    end
  end

  # PATCH/PUT /conceptos/1
  def update
    if @concepto.update(concepto_params)
      redirect_to @concepto, notice: 'Concepto was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /conceptos/1
  def destroy
    @concepto.destroy
    redirect_to conceptos_url, notice: 'Se ha eliminado exitosamente el Concepto.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concepto
      @concepto = Concepto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def concepto_params
      params.require(:concepto).permit(:clave, :description, :capitulo_id)
    end
end
