class CapitulosController < ApplicationController
  before_action :set_capitulo, only: [:show, :edit, :update, :destroy]
  before_action :options

  # GET /capitulos
  def index
    @capitulos = Capitulo.all
    @capitulo = Capitulo.new
  end

  # GET /capitulos/1
  def show
  end

  # GET /capitulos/new
  def new
    @capitulo = Capitulo.new
  end

  # GET /capitulos/1/edit
  def edit
  end

  # POST /capitulos
  def create
    @capitulo = Capitulo.new(capitulo_params)

    if @capitulo.save
      redirect_to capitulos_path, notice: 'Capitulo was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /capitulos/1
  def update
    if @capitulo.update(capitulo_params)
      redirect_to @capitulo, notice: 'Capitulo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /capitulos/1
  def destroy
    @capitulo.destroy
    redirect_to capitulos_url, notice: 'Capitulo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capitulo
      @capitulo = Capitulo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capitulo_params
      params.require(:capitulo).permit(:clave, :description)
    end
end
