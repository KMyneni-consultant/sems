class AtfcsController < ApplicationController
  before_action :signed_in_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_atfc, only: [:show, :edit, :update, :destroy]

  # GET /atfcs
  # GET /atfcs.json
  def index
    @atfcs = Atfc.all
  end

  # GET /atfcs/1
  # GET /atfcs/1.json
  def show
  end

  # GET /atfcs/new
  def new
    @atfc = Atfc.new
  end

  # GET /atfcs/1/edit
  def edit
  end

  # POST /atfcs
  # POST /atfcs.json
  def create
    @atfc = Atfc.new(atfc_params)

    respond_to do |format|
      if @atfc.save
        format.html { redirect_to @atfc, notice: 'Atfc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @atfc }
      else
        format.html { render action: 'new' }
        format.json { render json: @atfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atfcs/1
  # PATCH/PUT /atfcs/1.json
  def update
    respond_to do |format|
      if @atfc.update(atfc_params)
        format.html { redirect_to @atfc, notice: 'Atfc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @atfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atfcs/1
  # DELETE /atfcs/1.json
  def destroy
    @atfc.destroy
    respond_to do |format|
      format.html { redirect_to atfcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atfc
      @atfc = Atfc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atfc_params
      params.require(:atfc).permit(:cid, :description, :bundle, :status)
    end
end
