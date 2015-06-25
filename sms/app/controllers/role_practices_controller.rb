class RolePracticesController < ApplicationController
  before_action :signed_in_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_role_practice, only: [:show, :edit, :update, :destroy]

  # GET /role_practices
  # GET /role_practices.json
  def index
    @role_practices = RolePractice.all
  end

  # GET /role_practices/1
  # GET /role_practices/1.json
  def show
  end

  # GET /role_practices/new
  def new
    @role_practice = RolePractice.new
  end

  # GET /role_practices/1/edit
  def edit
  end

  # POST /role_practices
  # POST /role_practices.json
  def create
    @role_practice = RolePractice.new(role_practice_params)

    respond_to do |format|
      if @role_practice.save
        format.html { redirect_to @role_practice, notice: 'Role practice was successfully created.' }
        format.json { render action: 'show', status: :created, location: @role_practice }
      else
        format.html { render action: 'new' }
        format.json { render json: @role_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /role_practices/1
  # PATCH/PUT /role_practices/1.json
  def update
    respond_to do |format|
      if @role_practice.update(role_practice_params)
        format.html { redirect_to @role_practice, notice: 'Role practice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @role_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_practices/1
  # DELETE /role_practices/1.json
  def destroy
    @role_practice.destroy
    respond_to do |format|
      format.html { redirect_to role_practices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_practice
      @role_practice = RolePractice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_practice_params
      params.require(:role_practice).permit(:rid, :pid, :role_name)
    end
end
