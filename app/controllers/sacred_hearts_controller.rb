class SacredHeartsController < ApplicationController
  before_action :set_sacred_heart, only: [:show, :edit, :update, :destroy]

  # GET /sacred_hearts
  # GET /sacred_hearts.json
  def index
    @sacred_hearts = SacredHeart.all
  end

  # GET /sacred_hearts/1
  # GET /sacred_hearts/1.json
  def show
  end

  # GET /sacred_hearts/new
  def new
    @sacred_heart = SacredHeart.new
  end

  # GET /sacred_hearts/1/edit
  def edit
  end

  # POST /sacred_hearts
  # POST /sacred_hearts.json
  def create
    @sacred_heart = SacredHeart.new(sacred_heart_params)

    respond_to do |format|
      if @sacred_heart.save
        format.html { redirect_to @sacred_heart, notice: 'Sacred Heart Entry was successfully created.' }
        format.json { render :show, status: :created, location: @sacred_heart }
      else
        format.html { render :new }
        format.json { render json: @sacred_heart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sacred_hearts/1
  # PATCH/PUT /sacred_hearts/1.json
  def update
    respond_to do |format|
      if @sacred_heart.update(sacred_heart_params)
        format.html { redirect_to @sacred_heart, notice: 'Sacred Heart Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @sacred_heart }
      else
        format.html { render :edit }
        format.json { render json: @sacred_heart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sacred_hearts/1
  # DELETE /sacred_hearts/1.json
  def destroy
    @sacred_heart.destroy
    respond_to do |format|
      format.html { redirect_to sacred_hearts_url, notice: 'Sacred Heart Entry was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sacred_heart
      @sacred_heart = SacredHeart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sacred_heart_params
      params.require(:sacred_heart).permit(:name, :age, :summary, :photo, :story, :goalAmount, :donationDest, :locationCounty)
    end
end
