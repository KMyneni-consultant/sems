class RoleFacilitiesController < ApplicationController
  before_action :signed_in_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_role_facility, only: [:show, :edit, :update, :destroy]

  # GET /role_facilities
  # GET /role_facilities.json
  def index
    @role_facilities = RoleFacility.all
  end

  # GET /role_facilities/1
  # GET /role_facilities/1.json
  def show
  end

  # GET /role_facilities/new
  def new
    @role_facility = RoleFacility.new
  end

  # GET /role_facilities/1/edit
  def edit
  end

  # POST /role_facilities
  # POST /role_facilities.json
  def create
    @role_facility = RoleFacility.new(role_facility_params)

    respond_to do |format|
      if @role_facility.save
        format.html { redirect_to @role_facility, notice: 'Role facility was successfully created.' }
        format.json { render action: 'show', status: :created, location: @role_facility }
      else
        format.html { render action: 'new' }
        format.json { render json: @role_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /role_facilities/1
  # PATCH/PUT /role_facilities/1.json
  def update
    respond_to do |format|
      if @role_facility.update(role_facility_params)
        format.html { redirect_to @role_facility, notice: 'Role facility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @role_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_facilities/1
  # DELETE /role_facilities/1.json
  def destroy
    @role_facility.destroy
    respond_to do |format|
      format.html { redirect_to role_facilities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_facility
      @role_facility = RoleFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_facility_params
      params.require(:role_facility).permit(:rid, :fid, :pid, :role_name)
    end
end
