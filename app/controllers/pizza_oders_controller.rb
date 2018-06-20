class PizzaOdersController < ApplicationController
  before_action :set_pizza_oder, only: [:show, :edit, :update, :destroy]

  # GET /pizza_oders
  # GET /pizza_oders.json
  def index
    @pizza_oders = PizzaOder.all
  end

  # GET /pizza_oders/1
  # GET /pizza_oders/1.json
  def show
  end

  # GET /pizza_oders/new
  def new
    @pizza_oder = PizzaOder.new
  end

  # GET /pizza_oders/1/edit
  def edit
  end

  # POST /pizza_oders
  # POST /pizza_oders.json
  def create
    @pizza_oder = PizzaOder.new(pizza_oder_params)

    respond_to do |format|
      if @pizza_oder.save
        format.html { redirect_to @pizza_oder, notice: 'Pizza oder was successfully created.' }
        format.json { render :show, status: :created, location: @pizza_oder }
      else
        format.html { render :new }
        format.json { render json: @pizza_oder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizza_oders/1
  # PATCH/PUT /pizza_oders/1.json
  def update
    respond_to do |format|
      if @pizza_oder.update(pizza_oder_params)
        format.html { redirect_to @pizza_oder, notice: 'Pizza oder was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza_oder }
      else
        format.html { render :edit }
        format.json { render json: @pizza_oder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza_oders/1
  # DELETE /pizza_oders/1.json
  def destroy
    @pizza_oder.destroy
    respond_to do |format|
      format.html { redirect_to pizza_oders_url, notice: 'Pizza oder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza_oder
      @pizza_oder = PizzaOder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_oder_params
      params.require(:pizza_oder).permit(:order_id, :pizza_id)
    end
end
