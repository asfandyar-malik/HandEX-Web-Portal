class InviteImportersController < ApplicationController
  before_action :set_invite_importer, only: [:show, :edit, :update, :destroy]

  # GET /invite_importers
  # GET /invite_importers.json
  def index
    @invite_importers = InviteImporter.all
  end

  # GET /invite_importers/1
  # GET /invite_importers/1.json
  def show
  end

  # GET /invite_importers/new
  def new
    @invite_importer = InviteImporter.new
  end

  # GET /invite_importers/1/edit
  def edit
  end

  # POST /invite_importers
  # POST /invite_importers.json
  def create
    @invite_importer = InviteImporter.new(invite_importer_params)

    respond_to do |format|
      if @invite_importer.save
        format.html { redirect_to @invite_importer, notice: 'Invite importer was successfully created.' }
        format.json { render :show, status: :created, location: @invite_importer }
      else
        format.html { render :new }
        format.json { render json: @invite_importer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invite_importers/1
  # PATCH/PUT /invite_importers/1.json
  def update
    respond_to do |format|
      if @invite_importer.update(invite_importer_params)
        format.html { redirect_to @invite_importer, notice: 'Invite importer was successfully updated.' }
        format.json { render :show, status: :ok, location: @invite_importer }
      else
        format.html { render :edit }
        format.json { render json: @invite_importer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invite_importers/1
  # DELETE /invite_importers/1.json
  def destroy
    @invite_importer.destroy
    respond_to do |format|
      format.html { redirect_to invite_importers_url, notice: 'Invite importer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invite_importer
      @invite_importer = InviteImporter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invite_importer_params
      params.fetch(:invite_importer, {})
    end
end
