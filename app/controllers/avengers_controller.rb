class AvengersController < ApplicationController
  before_action :set_avenger, only: %i[ show edit update destroy ]

  # GET /avengers or /avengers.json
  def index
    @avengers = Avenger.all
  end

  # GET /avengers/1 or /avengers/1.json
  def show
  end

  # GET /avengers/new
  def new
    @avenger = Avenger.new
  end

  # GET /avengers/1/edit
  def edit
  end

  # POST /avengers or /avengers.json
  def create
    @avenger = Avenger.new(avenger_params)

    respond_to do |format|
      if @avenger.save
        format.html { redirect_to @avenger, notice: "Avenger was successfully created." }
        format.json { render :show, status: :created, location: @avenger }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avengers/1 or /avengers/1.json
  def update
    respond_to do |format|
      if @avenger.update(avenger_params)
        format.html { redirect_to @avenger, notice: "Avenger was successfully updated." }
        format.json { render :show, status: :ok, location: @avenger }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avengers/1 or /avengers/1.json
  def destroy
    @avenger.destroy
    respond_to do |format|
      format.html { redirect_to avengers_url, notice: "Avenger was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avenger
      @avenger = Avenger.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avenger_params
      params.require(:avenger).permit(:hero_name, :real_name, :age, :description, :statut, :user_id)
    end
end
