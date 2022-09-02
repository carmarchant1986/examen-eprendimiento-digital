class PlanFormativosController < ApplicationController
  before_action :set_plan_formativo, only: %i[ show edit update destroy ]

  # GET /plan_formativos or /plan_formativos.json
  def index
    @plan_formativos = PlanFormativo.all
  end

  # GET /plan_formativos/1 or /plan_formativos/1.json
  def show
  end

  # GET /plan_formativos/new
  def new
    @plan_formativo = PlanFormativo.new
  end

  # GET /plan_formativos/1/edit
  def edit
  end

  # POST /plan_formativos or /plan_formativos.json
  def create
    @plan_formativo = PlanFormativo.new(plan_formativo_params)

    respond_to do |format|
      if @plan_formativo.save
        format.html { redirect_to plan_formativo_url(@plan_formativo), notice: "Plan formativo was successfully created." }
        format.json { render :show, status: :created, location: @plan_formativo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plan_formativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_formativos/1 or /plan_formativos/1.json
  def update
    respond_to do |format|
      if @plan_formativo.update(plan_formativo_params)
        format.html { redirect_to plan_formativo_url(@plan_formativo), notice: "Plan formativo was successfully updated." }
        format.json { render :show, status: :ok, location: @plan_formativo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plan_formativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_formativos/1 or /plan_formativos/1.json
  def destroy
    @plan_formativo.destroy

    respond_to do |format|
      format.html { redirect_to plan_formativos_url, notice: "Plan formativo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_formativo
      @plan_formativo = PlanFormativo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plan_formativo_params
      params.require(:plan_formativo).permit(:descripcion, :duracion_horas)
    end
end
