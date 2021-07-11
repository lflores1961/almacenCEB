class SearchesController < ApplicationController
  before_action :options
  
  def new
    @search = Search.new
    @suppliers = Supplier.all
    @capitulos = Capitulo.all
    @conceptos = Concepto.all
    @partidas = Partida.all
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private
    def search_params
      params.require(:search).permit(:code, :name, :brand, :supplier_id, :capitulo_id, :concepto_id, :partida_id)
    end
    
end
