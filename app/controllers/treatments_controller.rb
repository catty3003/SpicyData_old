class TreatmentsController < ApplicationController
  before_action :set_treatment, only: [:show, :edit, :update, :destroy]

  # GET /treatments
  # GET /treatments.json
  def index
    @treatments = Treatment.all
  end

  # GET /treatments/1
  # GET /treatments/1.json
  def show
  end

  # GET /treatments/new
  def new
    @treatment = Treatment.new
  end

  # GET /treatments/1/edit
  def edit
  end

  # POST /treatments
  # POST /treatments.json
  def create
    @treatment = Treatment.new(treatment_params)

    respond_to do |format|
      if @treatment.save
        format.html { redirect_to @treatment, notice: 'Treatment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @treatment }
      else
        format.html { render action: 'new' }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatments/1
  # PATCH/PUT /treatments/1.json
  def update
    respond_to do |format|
      if @treatment.update(treatment_params)
        format.html { redirect_to @treatment, notice: 'Treatment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatments/1
  # DELETE /treatments/1.json
  def destroy
    @treatment.destroy
    respond_to do |format|
      format.html { redirect_to treatments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment
      @treatment = Treatment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treatment_params
      params.require(:treatment).permit(:temperature, :temperature_in_degree, :steam, :steam_in_percent, :fumigation_gas, :fumigation_gas_in_percent, :optical, :mechanical, :process_type, :t_ph, :pressure, :kgy_dose, :t_aw, :water_activity, :other_condition, :treat_duration, :treat_duration_unit, :t_comment, :reference_id, :user_id, :matrix_id)
    end
end
