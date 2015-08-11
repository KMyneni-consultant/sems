class FtfcsController < ApplicationController
  before_action :signed_in_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_ftfc, only: [:show, :edit, :update, :destroy]

  # GET /ftfcs
  # GET /ftfcs.json
  def index
    @ftfcs = Ftfc.all
  end

  # GET /ftfcs/1
  # GET /ftfcs/1.json
  def show
  end

  # GET /ftfcs/new
  def new
    @ftfc = Ftfc.new
  end

  # GET /ftfcs/1/edit
  def edit
  end

  # POST /ftfcs
  # POST /ftfcs.json
  def create
    @ftfc = Ftfc.new(ftfc_params)

    respond_to do |format|
      if @ftfc.save
        format.html { redirect_to @ftfc, notice: 'Ftfc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ftfc }
      else
        format.html { render action: 'new' }
        format.json { render json: @ftfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ftfcs/1
  # PATCH/PUT /ftfcs/1.json
  def update
    respond_to do |format|
      if @ftfc.update(ftfc_params)
        format.html { redirect_to @ftfc, notice: 'Ftfc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ftfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ftfcs/1
  # DELETE /ftfcs/1.json
  def destroy
    @ftfc.destroy
    respond_to do |format|
      format.html { redirect_to ftfcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ftfc
      @ftfc = Ftfc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ftfc_params
      params.require(:ftfc).permit(:cid, :description, :status)
    end
end
