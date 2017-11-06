class SimcardsController < ApplicationController
  before_action :set_simcard, only: [:show, :edit, :update, :destroy]

  # GET /simcards
  # GET /simcards.json
  def index
    @simcards = Simcard.all.order(status: :asc, project: :asc, carrier: :asc, startdate: :asc)
    respond_to do |format|
       format.html
       format.json {render :json => @otherdevices}
       format.xml  {render :xml => @otherdevices}
       format.csv do
         send_data render_to_string, filename: "otherdevices.csv", type: :csv
       end
    end
  end

  # GET /simcards/1
  # GET /simcards/1.json
  def show
  end

  # GET /simcards/new
  def new
    @simcard = Simcard.new
  end

  # GET /simcards/1/edit
  def edit
  end

  # POST /simcards
  # POST /simcards.json
  def create
    @simcard = Simcard.new(simcard_params)

    respond_to do |format|
      if @simcard.save
        format.html { redirect_to simcards_url, notice: 'Simcard was successfully created.' }
        format.json { render :show, status: :created, location: @simcard }
      else
        format.html { render :new }
        format.json { render json: @simcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simcards/1
  # PATCH/PUT /simcards/1.json
  def update
    respond_to do |format|
      if @simcard.update(simcard_params)
        format.html { redirect_to simcards_url, notice: 'Simcard was successfully updated.' }
        format.json { render :show, status: :ok, location: @simcard }
      else
        format.html { render :edit }
        format.json { render json: @simcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simcards/1
  # DELETE /simcards/1.json
  def destroy
    @simcard.destroy
    respond_to do |format|
      format.html { redirect_to simcards_url, notice: 'Simcard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simcard
      @simcard = Simcard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simcard_params
      params.require(:simcard).permit(:project, :startdate, :carrier, :phonenumber, :deviceid, :monthlyfee, :status)
    end
end
