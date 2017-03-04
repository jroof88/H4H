class FirehousesController < ApplicationController
  before_action :set_firehouse, only: [:show, :edit, :update, :destroy]

  # GET /firehouses
  # GET /firehouses.json
  def index
    @firehouses = Firehouse.all
  end

  # GET /firehouses/1
  # GET /firehouses/1.json
  def show
  end

  # GET /firehouses/new
  def new
    @firehouse = Firehouse.new
  end

  # GET /firehouses/1/edit
  def edit
  end

  # POST /firehouses
  # POST /firehouses.json
  def create
    @firehouse = Firehouse.new(firehouse_params)

    respond_to do |format|
      if @firehouse.save
        format.html { redirect_to @firehouse, notice: 'Firehouse was successfully created.' }
        format.json { render :show, status: :created, location: @firehouse }
      else
        format.html { render :new }
        format.json { render json: @firehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firehouses/1
  # PATCH/PUT /firehouses/1.json
  def update
    respond_to do |format|
      if @firehouse.update(firehouse_params)
        format.html { redirect_to @firehouse, notice: 'Firehouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @firehouse }
      else
        format.html { render :edit }
        format.json { render json: @firehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firehouses/1
  # DELETE /firehouses/1.json
  def destroy
    @firehouse.destroy
    respond_to do |format|
      format.html { redirect_to firehouses_url, notice: 'Firehouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firehouse
      @firehouse = Firehouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firehouse_params
      params.require(:firehouse).permit(:name, :age, :summary, :photo, :story, :goalAmount, :donationDest, :locationCounty)
    end
end
