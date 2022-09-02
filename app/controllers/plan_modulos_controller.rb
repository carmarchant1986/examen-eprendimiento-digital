class PlanModulosController < ApplicationController
  before_action :set_plan_modulo, only: %i[ show edit update destroy ]

  # GET /plan_modulos or /plan_modulos.json
  def index
    @plan_modulos = PlanModulo.all
  end

  # GET /plan_modulos/1 or /plan_modulos/1.json
  def show
  end

  # GET /plan_modulos/new
  def new
    @plan_modulo = PlanModulo.new
  end

  # GET /plan_modulos/1/edit
  def edit
  end

  # POST /plan_modulos or /plan_modulos.json
  def create
    @plan_modulo = PlanModulo.new(plan_modulo_params)

    respond_to do |format|
      if @plan_modulo.save
        format.html { redirect_to plan_modulo_url(@plan_modulo), notice: "Plan modulo was successfully created." }
        format.json { render :show, status: :created, location: @plan_modulo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plan_modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_modulos/1 or /plan_modulos/1.json
  def update
    respond_to do |format|
      if @plan_modulo.update(plan_modulo_params)
        format.html { redirect_to plan_modulo_url(@plan_modulo), notice: "Plan modulo was successfully updated." }
        format.json { render :show, status: :ok, location: @plan_modulo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plan_modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_modulos/1 or /plan_modulos/1.json
  def destroy
    @plan_modulo.destroy

    respond_to do |format|
      format.html { redirect_to plan_modulos_url, notice: "Plan modulo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_modulo
      @plan_modulo = PlanModulo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plan_modulo_params
      params.require(:plan_modulo).permit(:references, :references)
    end
end
