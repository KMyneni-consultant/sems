class TxClassesController < ApplicationController
  before_action :set_tx_class, only: [:show, :edit, :update, :destroy]

  # GET /tx_classes
  # GET /tx_classes.json
  def index
    @tx_classes = TxClass.all
  end

  # GET /tx_classes/1
  # GET /tx_classes/1.json
  def show
  end

  # GET /tx_classes/new
  def new
    @tx_class = TxClass.new
  end

  # GET /tx_classes/1/edit
  def edit
  end

  # POST /tx_classes
  # POST /tx_classes.json
  def create
    @tx_class = TxClass.new(tx_class_params)

    respond_to do |format|
      if @tx_class.save
        format.html { redirect_to @tx_class, notice: 'Tx class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tx_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @tx_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tx_classes/1
  # PATCH/PUT /tx_classes/1.json
  def update
    respond_to do |format|
      if @tx_class.update(tx_class_params)
        format.html { redirect_to @tx_class, notice: 'Tx class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tx_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tx_classes/1
  # DELETE /tx_classes/1.json
  def destroy
    @tx_class.destroy
    respond_to do |format|
      format.html { redirect_to tx_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tx_class
      @tx_class = TxClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tx_class_params
      params.require(:tx_class).permit(:cid, :class_name, :fid, :pid)
    end
end
