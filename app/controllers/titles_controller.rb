class TitlesController < ApplicationController
  before_action :set_title, only: [:show, :edit, :update, :destroy]

  # GET /titles
  def index
    @titles = Title.all
  end

  # GET /titles/1
  def show
  end

  # GET /titles/new
  def new
    @title = Title.new
  end

  # GET /titles/1/edit
  def edit
  end

  # POST /titles
  def create
    @title = Title.new(title_params)

    if @title.save
      redirect_to titles_url, notice: 'Titel wurde erfolgreich erstellt.'
    else
      render :new
    end
  end

  # PATCH/PUT /titles/1
  def update
    if @title.update(title_params)
      redirect_to titles_url, notice: 'Titel wurde erfolgreich geändert.'
    else
      render :edit
    end
  end

  # DELETE /titles/1
  def destroy
    @title.destroy
      redirect_to titles_url, notice: 'Titel wurde erfolgreich gelöscht.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title
      @title = Title.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_params
      params.require(:title).permit(:title)
    end
end
