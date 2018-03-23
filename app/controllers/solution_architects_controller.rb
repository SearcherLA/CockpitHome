class SolutionArchitectsController < ApplicationController
  before_action :set_solution_architect, only: [:show, :edit, :update, :destroy]

  # GET /solution_architects
  def index
    @solution_architects = SolutionArchitect.all
  end

  # GET /solution_architects/1
  def show
  end

  # GET /solution_architects/new
  def new
    @solution_architect = SolutionArchitect.new
  end

  # GET /solution_architects/1/edit
  def edit
  end

  # POST /solution_architects
  def create
    @solution_architect = SolutionArchitect.new(solution_architect_params)
    if @solution_architect.save
        redirect_to solution_architects_url, notice: 'Solution Architect wurde erfolgreich erstellt.'
    else
        render :new
    end
  end

  # PATCH/PUT /solution_architects/1
  def update
    if @solution_architect.update(solution_architect_params)
      redirect_to solution_architects_url, notice: 'Solution Architect wurde erfolgreich geändert.'
    else
      render :edit
    end
  end

  # DELETE /solution_architects/1
  def destroy
    @solution_architect.destroy
      redirect_to solution_architects_url, notice: 'Solution Architect wurde erfolgreich gelöscht.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution_architect
      @solution_architect = SolutionArchitect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solution_architect_params
      params.require(:solution_architect).permit(:firstname, :lastname, :shortcut, :team_id)
    end
end
