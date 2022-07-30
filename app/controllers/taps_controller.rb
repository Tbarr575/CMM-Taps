class TapsController < ApplicationController
  before_action :set_tap, only: %i[ show edit update destroy ]

  # GET /taps or /taps.json
  def index
    @taps = Tap.all
  end

  # GET /taps/1 or /taps/1.json
  def show
  end

  # GET /taps/new
  def new
    @tap = Tap.new
  end

  # GET /taps/1/edit
  def edit
  end

  # POST /taps or /taps.json
  def create
    @tap = Tap.new(tap_params)

    respond_to do |format|
      if @tap.save
        format.html { redirect_to tap_url(@tap), notice: "Tap was successfully created." }
        format.json { render :show, status: :created, location: @tap }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taps/1 or /taps/1.json
  def update
    respond_to do |format|
      if @tap.update(tap_params)
        format.html { redirect_to tap_url(@tap), notice: "Tap was successfully updated." }
        format.json { render :show, status: :ok, location: @tap }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taps/1 or /taps/1.json
  def destroy
    @tap.destroy

    respond_to do |format|
      format.html { redirect_to taps_url, notice: "Tap was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tap
      @tap = Tap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tap_params
      params.require(:tap).permit(:grouping, :floor, :location, :drink_id)
    end
end
