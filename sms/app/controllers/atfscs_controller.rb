class AtfscsController < ApplicationController
  before_action :signed_in_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_atfsc, only: [:show, :edit, :update, :destroy]

  # GET /atfscs
  # GET /atfscs.json
  def index
    @atfscs = Atfsc.all
  end

  # GET /atfscs/1
  # GET /atfscs/1.json
  def show
  end

  # GET /atfscs/new
  def new
    @atfsc = Atfsc.new
    @atfcs = Atfc.all
  end

  # GET /atfscs/1/edit
  def edit
    @atfcs = Atfc.all
  end

  # POST /atfscs
  # POST /atfscs.json
  def create
    @atfsc = Atfsc.new(atfsc_params)

    respond_to do |format|
      if @atfsc.save
        format.html { redirect_to @atfsc, notice: 'Atfsc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @atfsc }
      else
        format.html { render action: 'new' }
        format.json { render json: @atfsc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atfscs/1
  # PATCH/PUT /atfscs/1.json
  def update
    respond_to do |format|
      if @atfsc.update(atfsc_params)
        format.html { redirect_to @atfsc, notice: 'Atfsc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @atfsc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atfscs/1
  # DELETE /atfscs/1.json
  def destroy
    @atfsc.destroy
    respond_to do |format|
      format.html { redirect_to atfscs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atfsc
      @atfsc = Atfsc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atfsc_params
      params.require(:atfsc).permit(:cid, :scid, :description, :bundle, :status)
    end
end
