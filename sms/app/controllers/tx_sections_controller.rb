class TxSectionsController < ApplicationController
  before_action :set_tx_section, only: [:show, :edit, :update, :destroy]

  # GET /tx_sections
  # GET /tx_sections.json
  def index
    @tx_sections = TxSection.all
  end

  # GET /tx_sections/1
  # GET /tx_sections/1.json
  def show
  end

  # GET /tx_sections/new
  def new
    @tx_section = TxSection.new
  end

  # GET /tx_sections/1/edit
  def edit
  end

  # POST /tx_sections
  # POST /tx_sections.json
  def create
    @tx_section = TxSection.new(tx_section_params)

    respond_to do |format|
      if @tx_section.save
        format.html { redirect_to @tx_section, notice: 'Tx section was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tx_section }
      else
        format.html { render action: 'new' }
        format.json { render json: @tx_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tx_sections/1
  # PATCH/PUT /tx_sections/1.json
  def update
    respond_to do |format|
      if @tx_section.update(tx_section_params)
        format.html { redirect_to @tx_section, notice: 'Tx section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tx_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tx_sections/1
  # DELETE /tx_sections/1.json
  def destroy
    @tx_section.destroy
    respond_to do |format|
      format.html { redirect_to tx_sections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tx_section
      @tx_section = TxSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tx_section_params
      params.require(:tx_section).permit(:sid, :section_name, :fid, :pid)
    end
end
