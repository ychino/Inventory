class OtherdevicesController < ApplicationController
  before_action :set_otherdevice, only: [:show, :edit, :update, :destroy]

  # GET /otherdevices
  # GET /otherdevices.json
  def index
    @otherdevices = Otherdevice.all.order(status: :asc, buildby: :asc, assettag: :asc)
     respond_to do |format|
       format.html
       format.json {render :json => @otherdevices}
       format.xml  {render :xml => @otherdevices}
       format.csv do
         send_data render_to_string, filename: "otherdevices.csv", type: :csv
       end
    end
  end

  # GET /otherdevices/1
  # GET /otherdevices/1.json
  def show
  end

  # GET /otherdevices/new
  def new
    @otherdevice = Otherdevice.new
  end

  # GET /otherdevices/1/edit
  def edit
  end

  # POST /otherdevices
  # POST /otherdevices.json
  def create
    @otherdevice = Otherdevice.new(otherdevice_params)

    respond_to do |format|
      if @otherdevice.save
        format.html { redirect_to otherdevices_url, notice: 'Otherdevice was successfully created.' }
        format.json { render :show, status: :created, location: @otherdevice }
      else
        format.html { render :new }
        format.json { render json: @otherdevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otherdevices/1
  # PATCH/PUT /otherdevices/1.json
  def update
    respond_to do |format|
      if @otherdevice.update(otherdevice_params)
        format.html { redirect_to otherdevices_url, notice: 'Otherdevice was successfully updated.' }
        format.json { render :show, status: :ok, location: @otherdevice }
      else
        format.html { render :edit }
        format.json { render json: @otherdevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otherdevices/1
  # DELETE /otherdevices/1.json
  def destroy
    @otherdevice.destroy
    respond_to do |format|
      format.html { redirect_to otherdevices_url, notice: 'Otherdevice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    if params[:file].blank?
      redirect_to otherdevices_url, notice: 'Please select a file!'
    else
      Otherdevice.import(params[:file])
      redirect_to otherdevices_url, notice: 'Devices have been imported!'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otherdevice
      @otherdevice = Otherdevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otherdevice_params
      params.require(:otherdevice).permit(:service, :assettag, :project, :model, :requestedby, :buildby, :notes, :status, :assettag)
    end
end
