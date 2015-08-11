class FtfscsController < ApplicationController
  before_action :signed_in_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_ftfsc, only: [:show, :edit, :update, :destroy]

  # GET /ftfscs
  # GET /ftfscs.json
  def index
    @ftfscs = Ftfsc.all
  end

  # GET /ftfscs/1
  # GET /ftfscs/1.json
  def show
  end

  # GET /ftfscs/new
  def new
    @ftfsc = Ftfsc.new
  end

  # GET /ftfscs/1/edit
  def edit
  end

  # POST /ftfscs
  # POST /ftfscs.json
  def create
    @ftfsc = Ftfsc.new(ftfsc_params)

    respond_to do |format|
      if @ftfsc.save
        format.html { redirect_to @ftfsc, notice: 'Ftfsc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ftfsc }
      else
        format.html { render action: 'new' }
        format.json { render json: @ftfsc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ftfscs/1
  # PATCH/PUT /ftfscs/1.json
  def update
    respond_to do |format|
      if @ftfsc.update(ftfsc_params)
        format.html { redirect_to @ftfsc, notice: 'Ftfsc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ftfsc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ftfscs/1
  # DELETE /ftfscs/1.json
  def destroy
    @ftfsc.destroy
    respond_to do |format|
      format.html { redirect_to ftfscs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ftfsc
      @ftfsc = Ftfsc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ftfsc_params
      params.require(:ftfsc).permit(:ftfc_id, :scid, :description, :status)
    end
end
