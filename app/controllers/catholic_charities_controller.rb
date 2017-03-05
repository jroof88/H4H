class CatholicCharitiesController < ApplicationController
  before_action :set_catholic_charity, only: [:show, :edit, :update, :destroy]

  # GET /catholic_charities
  # GET /catholic_charities.json
  def index
    @catholic_charities = CatholicCharity.all
  end

  # GET /catholic_charities/1
  # GET /catholic_charities/1.json
  def show
  end

  # GET /catholic_charities/new
  def new
    @catholic_charity = CatholicCharity.new
  end

  # GET /catholic_charities/1/edit
  def edit
  end

  # POST /catholic_charities
  # POST /catholic_charities.json
  def create
    @catholic_charity = CatholicCharity.new(catholic_charity_params)

    respond_to do |format|
      if @catholic_charity.save
        format.html { redirect_to @catholic_charity, notice: 'Catholic charity was successfully created.' }
        format.json { render :show, status: :created, location: @catholic_charity }
      else
        format.html { render :new }
        format.json { render json: @catholic_charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catholic_charities/1
  # PATCH/PUT /catholic_charities/1.json
  def update
    respond_to do |format|
      if @catholic_charity.update(catholic_charity_params)
        format.html { redirect_to @catholic_charity, notice: 'Catholic charity was successfully updated.' }
        format.json { render :show, status: :ok, location: @catholic_charity }
      else
        format.html { render :edit }
        format.json { render json: @catholic_charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catholic_charities/1
  # DELETE /catholic_charities/1.json
  def destroy
    @catholic_charity.destroy
    respond_to do |format|
      format.html { redirect_to catholic_charities_url, notice: 'Catholic charity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catholic_charity
      @catholic_charity = CatholicCharity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catholic_charity_params
      params.require(:catholic_charity).permit(:name, :age, :summary, :photo, :story, :goalAmount, :donationDest, :locationCounty)
    end
end
