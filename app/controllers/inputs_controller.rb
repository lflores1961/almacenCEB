class InputsController < ApplicationController
  before_action :set_input, only: %i[ show edit update destroy ]
  before_action :options

  # GET /inputs or /inputs.json
  def index
    @inputs = Input.all
    new_input
  end

  # GET /inputs/1 or /inputs/1.json
  def show
  end

  # GET /inputs/new
  def new
    new_input
  end

  # GET /list_inputs
  def list_inputs
    @input_list = params[:input] || []
    new_input
  end
  

  # GET /inputs/1/edit
  def edit
  end

  # POST /inputs or /inputs.json
  def create
    @inputs = Input.all
    new_input
    @input.user_id = @user.id
    # params[:input][:user_id] = current_user.id
    respond_to do |format|
      if @input.save
        format.js { redirect_to inputs_path, notice: "Se agregó correctamente el artículo."}
        # format.html { redirect_to @input, notice: "Input was successfully created." }
        # format.json { render :show, status: :created, location: @input }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inputs/1 or /inputs/1.json
  def update
    respond_to do |format|
      if @input.update(input_params)
        format.html { redirect_to @input, notice: "Input was successfully updated." }
        format.json { render :show, status: :ok, location: @input }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inputs/1 or /inputs/1.json
  def destroy
    @input.destroy
    respond_to do |format|
      format.html { redirect_to inputs_url, notice: "Input was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_input
      @input = Input.find(params[:id])
    end

    def new_input
      if action_name == 'create'
        @input = Input.new(input_params)
      else
        @input = Input.new
      end
      @suppliers = Supplier.all
      @products = Product.all
      @user = current_user
    end
    

    # Only allow a list of trusted parameters through.
    def input_params
      params.require(:input).permit(:input_date, :invoice, :price, :quantity, :location, :product_id, :supplier_id, :user_id)
    end
end
