class OutputsController < ApplicationController
  before_action :set_output, only: [:show, :edit, :update, :destroy]
  before_action :options

  # GET /outputs
  def index
    @outputs = Output.all
  end

  # GET /outputs/1
  def show
  end

  # GET /outputs/new
  def new
    new_output
  end

  # GET /list_outputs
  def list_outputs
    @output_list = params[:output] || []
    new_output
  end

  # GET /outputs/1/edit
  def edit
  end

  # POST /outputs
  def create
    new_output
    @output.user_id = @user.id

    respond_to do |format|
      if @output.save
        format.js
      else
        format.html { render :new }
      end      
    end

  end

  # PATCH/PUT /outputs/1
  def update
    if @output.update(output_params)
      redirect_to @output, notice: 'Output was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /outputs/1
  def destroy
    @output.destroy
    redirect_to outputs_url, notice: 'Output was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_output
      @output = Output.find(params[:id])
    end

    def new_output
      if action_name == 'create'
        @output = Output.new(output_params)
      else
        @output = Output.new
      end
      @suppliers = Supplier.all
      @products = Product.all
      @user = current_user
    end

    # Only allow a list of trusted parameters through.
    def output_params
      params.require(:output).permit(:output_date, :invoice, :quantity, :price, :receiving_area, :receiving_person, :product_id, :user_id)
    end
end
