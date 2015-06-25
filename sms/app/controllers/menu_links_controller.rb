class MenuLinksController < ApplicationController
  before_action :signed_in_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_menu_link, only: [:show, :edit, :update, :destroy]

  # GET /menu_links
  # GET /menu_links.json
  def index
    @menu_links = MenuLink.all
  end

  # GET /menu_links/1
  # GET /menu_links/1.json
  def show
  end

  # GET /menu_links/new
  def new
    @menu_link = MenuLink.new
  end

  # GET /menu_links/1/edit
  def edit
  end

  # POST /menu_links
  # POST /menu_links.json
  def create
    @menu_link = MenuLink.new(menu_link_params)

    respond_to do |format|
      if @menu_link.save
        format.html { redirect_to @menu_link, notice: 'Menu link was successfully created.' }
        format.json { render action: 'show', status: :created, location: @menu_link }
      else
        format.html { render action: 'new' }
        format.json { render json: @menu_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_links/1
  # PATCH/PUT /menu_links/1.json
  def update
    respond_to do |format|
      if @menu_link.update(menu_link_params)
        format.html { redirect_to @menu_link, notice: 'Menu link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @menu_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_links/1
  # DELETE /menu_links/1.json
  def destroy
    @menu_link.destroy
    respond_to do |format|
      format.html { redirect_to menu_links_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_link
      @menu_link = MenuLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_link_params
      params.require(:menu_link).permit(:lid, :linkname, :bundle)
    end
end
