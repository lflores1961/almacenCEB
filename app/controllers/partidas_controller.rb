class PartidasController < ApplicationController
  before_action :set_partida, only: [:show, :edit, :update, :destroy]
  before_action :options

  # GET /partidas
  def index
    @partida = Partida.new
    @partidas = Partida.all
    @conceptos = Concepto.all
  end

  # GET /partidas/1
  def show
  end

  # GET /partidas/new
  def new
    @partidas = Partida.all
    @partida = Partida.new
  end

  # GET /partidas/1/edit
  def edit
  end

  # POST /partidas
  def create
    @conceptos = Concepto.all
    @partida = Partida.new(partida_params)

    if @partida.save
      redirect_to partidas_path, notice: 'Se ha creado exitosamente el registro de la Partida.'
    else
      render :new
    end
  end

  # PATCH/PUT /partidas/1
  def update
    if @partida.update(partida_params)
      redirect_to @partida, notice: 'Partida was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /partidas/1
  def destroy
    @partida.destroy
    redirect_to partidas_url, notice: 'Se ha eliminado exitosamente el registro de la Partida.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partida
      @partida = Partida.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def partida_params
      params.require(:partida).permit(:clave, :description, :concepto_id)
    end
end
