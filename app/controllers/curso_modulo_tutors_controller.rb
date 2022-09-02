class CursoModuloTutorsController < ApplicationController
  before_action :set_curso_modulo_tutor, only: %i[ show edit update destroy ]

  # GET /curso_modulo_tutors or /curso_modulo_tutors.json
  def index
    @curso_modulo_tutors = CursoModuloTutor.all
  end

  # GET /curso_modulo_tutors/1 or /curso_modulo_tutors/1.json
  def show
  end

  # GET /curso_modulo_tutors/new
  def new
    @curso_modulo_tutor = CursoModuloTutor.new
  end

  # GET /curso_modulo_tutors/1/edit
  def edit
  end

  # POST /curso_modulo_tutors or /curso_modulo_tutors.json
  def create
    @curso_modulo_tutor = CursoModuloTutor.new(curso_modulo_tutor_params)

    respond_to do |format|
      if @curso_modulo_tutor.save
        format.html { redirect_to curso_modulo_tutor_url(@curso_modulo_tutor), notice: "Curso modulo tutor was successfully created." }
        format.json { render :show, status: :created, location: @curso_modulo_tutor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @curso_modulo_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curso_modulo_tutors/1 or /curso_modulo_tutors/1.json
  def update
    respond_to do |format|
      if @curso_modulo_tutor.update(curso_modulo_tutor_params)
        format.html { redirect_to curso_modulo_tutor_url(@curso_modulo_tutor), notice: "Curso modulo tutor was successfully updated." }
        format.json { render :show, status: :ok, location: @curso_modulo_tutor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @curso_modulo_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curso_modulo_tutors/1 or /curso_modulo_tutors/1.json
  def destroy
    @curso_modulo_tutor.destroy

    respond_to do |format|
      format.html { redirect_to curso_modulo_tutors_url, notice: "Curso modulo tutor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso_modulo_tutor
      @curso_modulo_tutor = CursoModuloTutor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def curso_modulo_tutor_params
      params.require(:curso_modulo_tutor).permit(:modulo_id, :tutor_id, :curso_id)
    end
end
