class EprodevicesController < ApplicationController
  before_action :set_eprodevice, only: [:show, :edit, :update, :destroy]

  # GET /eprodevices
  # GET /eprodevices.json
  def index
    @eprodevices = Eprodevice.all
    respond_to do |format|
       format.html
       format.json {render :json => @eprodevices}
       format.xml  {render :xml => @eprodevices}
       format.csv do
         send_data render_to_string, filename: "eprodevices.csv", type: :csv
       end
    end
  end

  # GET /eprodevices/1
  # GET /eprodevices/1.json
  def show
  end

  # GET /eprodevices/new
  def new
    @eprodevice = Eprodevice.new
  end

  # GET /eprodevices/1/edit
  def edit
  end

  # POST /eprodevices
  # POST /eprodevices.json
  def create
    @eprodevice = Eprodevice.new(eprodevice_params)

    respond_to do |format|
      if @eprodevice.save
        format.html { redirect_to @eprodevice, notice: 'Eprodevice was successfully created.' }
        format.json { render :show, status: :created, location: @eprodevice }
      else
        format.html { render :new }
        format.json { render json: @eprodevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eprodevices/1
  # PATCH/PUT /eprodevices/1.json
  def update
    respond_to do |format|
      if @eprodevice.update(eprodevice_params)
        format.html { redirect_to @eprodevice, notice: 'Eprodevice was successfully updated.' }
        format.json { render :show, status: :ok, location: @eprodevice }
      else
        format.html { render :edit }
        format.json { render json: @eprodevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eprodevices/1
  # DELETE /eprodevices/1.json
  def destroy
    @eprodevice.destroy
    respond_to do |format|
      format.html { redirect_to eprodevices_url, notice: 'Eprodevice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eprodevice
      @eprodevice = Eprodevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eprodevice_params
      params.require(:eprodevice).permit(:service, :assettag, :project, :model, :requestedby, :buildby, :notes, :status, :siteid)
    end
end
