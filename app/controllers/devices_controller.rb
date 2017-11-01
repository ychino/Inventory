class DevicesController < ApplicationController
  before_action :set_device, only: [:show, :edit, :update, :destroy]

  # GET /sensors
  # GET /sensors.json
  def index
    @q = Device.search(params[:q])
    @devices = @q.result(distinct: true).order(status: :asc, builtby: :asc, project: :asc, name: :asc)
    @devicetotal = Device.all
    @count = 1
    respond_to do |format|
       format.html
       format.json {render :json => @devices}
       format.xml  {render :xml => @devices}
       format.csv do
         send_data render_to_string, filename: "devices.csv", type: :csv
       end
    end
  end

  # GET /sensors/1
  # GET /sensors/1.json
  def show
  end

  # GET /sensors/new
  def new
    @device = Device.new
  end

  # GET /sensors/1/edit
  def edit
  end

  # POST /sensors
  # POST /sensors.json
  def create
    @device = Device.new(device_params)

    respond_to do |format|
      if @device.save
        format.html { redirect_to devices_url, notice: 'Device was successfully created.' }
        format.json { render :show, status: :created, location: @device }
      else
        format.html { render :new }
        format.json { render json: devices_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensors/1
  # PATCH/PUT /sensors/1.json
  def update
    respond_to do |format|
      if @device.update(device_params)
        format.html { redirect_to devices_url, notice: 'Device was successfully updated.' }
        format.json { render :show, status: :ok, location: @device }
      else
        format.html { render :edit }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensors/1
  # DELETE /sensors/1.json
  def destroy
    @device.destroy
    respond_to do |format|
      format.html { redirect_to devices_url, notice: 'Device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def import
    if params[:file].blank?
      redirect_to devices_url, notice: 'Please select a file!'
    else
      Device.import(params[:file])
      redirect_to devices_url, notice: 'Devices have been imported!'
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device
      @device = Device.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_params
      params.require(:device).permit(:name, :description, :kind, :status, :builtby, :requestedby, :model, :siteid, :project)
    end
end
