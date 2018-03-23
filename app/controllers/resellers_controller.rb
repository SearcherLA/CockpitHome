class ResellersController < ApplicationController
  before_action :set_reseller, only: [:show, :edit, :update, :destroy]

  # GET /resellers
  def index
    @resellers = Reseller.all
  end

  # GET /resellers/1
  def show
  end

  # GET /resellers/new
  def new
    @reseller = Reseller.new
  end

  # GET /resellers/1/edit
  def edit
  end

  # POST /resellers
  def create
    @reseller = Reseller.new(reseller_params)

    if @reseller.save
      redirect_to resellers_url, notice: 'Reseller wurde erfolgreich erstellt.'
    else
      render :new
    end
  end

  # PATCH/PUT /resellers/1
  def update
    if @reseller.update(reseller_params)
      redirect_to resellers_url, notice: 'Reseller wurde erfolgreich geändert.'
    else
      render :edit
    end
  end

  # DELETE /resellers/1
  def destroy
    @reseller.destroy
      redirect_to resellers_url, notice: 'Reseller wurde erfolgreich gelöscht.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reseller
      @reseller = Reseller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reseller_params
      params.require(:reseller).permit(:resname, :shortcut)
    end
end
