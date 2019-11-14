class AlunoprofessorsController < ApplicationController
  before_action :set_alunoprofessor, only: [:show, :edit, :update, :destroy]

  # GET /alunoprofessors
  # GET /alunoprofessors.json
  def index
    @alunoprofessors = Alunoprofessor.all
  end

  # GET /alunoprofessors/1
  # GET /alunoprofessors/1.json
  def show
  end

  # GET /alunoprofessors/new
  def new
    @alunoprofessor = Alunoprofessor.new
  end

  # GET /alunoprofessors/1/edit
  def edit
  end

  # POST /alunoprofessors
  # POST /alunoprofessors.json
  def create
    @alunoprofessor = Alunoprofessor.new(alunoprofessor_params)

    respond_to do |format|
      if @alunoprofessor.save
        format.html { redirect_to @alunoprofessor, notice: 'Alunoprofessor was successfully created.' }
        format.json { render :show, status: :created, location: @alunoprofessor }
      else
        format.html { render :new }
        format.json { render json: @alunoprofessor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alunoprofessors/1
  # PATCH/PUT /alunoprofessors/1.json
  def update
    respond_to do |format|
      if @alunoprofessor.update(alunoprofessor_params)
        format.html { redirect_to @alunoprofessor, notice: 'Alunoprofessor was successfully updated.' }
        format.json { render :show, status: :ok, location: @alunoprofessor }
      else
        format.html { render :edit }
        format.json { render json: @alunoprofessor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alunoprofessors/1
  # DELETE /alunoprofessors/1.json
  def destroy
    @alunoprofessor.destroy
    respond_to do |format|
      format.html { redirect_to alunoprofessors_url, notice: 'Alunoprofessor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alunoprofessor
      @alunoprofessor = Alunoprofessor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alunoprofessor_params
      params.require(:alunoprofessor).permit(:aluno_id, :professor_id)
    end
end
