class PdetailsController < ApplicationController
  before_action :set_pdetail, only: [:show, :edit, :update, :destroy]

  # GET /pdetails
  # GET /pdetails.json
  def index
    @pdetails = Pdetail.search(params[:search])
  end

  # GET /pdetails/1
  # GET /pdetails/1.json
  def show
  end

  # GET /pdetails/new
  def new
    @pdetail = Pdetail.new
  end

  # GET /pdetails/1/edit
  def edit
  end

  # POST /pdetails
  # POST /pdetails.json
  def create
    @pdetail = Pdetail.new(pdetail_params)

    respond_to do |format|
      if @pdetail.save
        format.html { redirect_to @pdetail, notice: 'Pdetail was successfully created.' }
        format.json { render :show, status: :created, location: @pdetail }
      else
        format.html { render :new }
        format.json { render json: @pdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pdetails/1
  # PATCH/PUT /pdetails/1.json
  def update
    respond_to do |format|
      if @pdetail.update(pdetail_params)
        format.html { redirect_to @pdetail, notice: 'Pdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @pdetail }
      else
        format.html { render :edit }
        format.json { render json: @pdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdetails/1
  # DELETE /pdetails/1.json
  def destroy
    @pdetail.destroy
    respond_to do |format|
      format.html { redirect_to pdetails_url, notice: 'Pdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdetail
      @pdetail = Pdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pdetail_params
      params.require(:pdetail).permit(:ad_type, :property_name, :property_type, :location, :city, :area, :rent, :bathroom, :bedroom, :size, :price, :owner_name, :property_status, :add_date, :propertyimage)
    end
end
