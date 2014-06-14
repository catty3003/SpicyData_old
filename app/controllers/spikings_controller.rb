class SpikingsController < ApplicationController
  before_action :set_spiking, only: [:show, :edit, :update, :destroy]

  # GET /spikings
  # GET /spikings.json
  def index
    @spikings = Spiking.all
  end

  # GET /spikings/1
  # GET /spikings/1.json
  def show
  end

  # GET /spikings/new
  def new
    @spiking = Spiking.new
  end

  # GET /spikings/1/edit
  def edit
  end

  # POST /spikings
  # POST /spikings.json
  def create
    @spiking = Spiking.new(spiking_params)

    respond_to do |format|
      if @spiking.save
        format.html { redirect_to @spiking, notice: 'Spiking was successfully created.' }
        format.json { render action: 'show', status: :created, location: @spiking }
      else
        format.html { render action: 'new' }
        format.json { render json: @spiking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spikings/1
  # PATCH/PUT /spikings/1.json
  def update
    respond_to do |format|
      if @spiking.update(spiking_params)
        format.html { redirect_to @spiking, notice: 'Spiking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @spiking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spikings/1
  # DELETE /spikings/1.json
  def destroy
    @spiking.destroy
    respond_to do |format|
      format.html { redirect_to spikings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spiking
      @spiking = Spiking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spiking_params
      params.require(:spiking).permit(:spik_short_name, :spik_long_name, :spik_process_description, :spik_device_needed, :pros, :cons, :reference_id, :user_id)
    end
end
