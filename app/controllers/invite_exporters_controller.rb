class InviteExportersController < ApplicationController
  before_action :set_invite_exporter, only: [:show, :edit, :update, :destroy]


  def index
    @invite_exporters = InviteExporter.all
  end

  def show
  end

  def new
    @invite_exporter = InviteExporter.new
  end

  def edit
  end

  def create
    @invite_exporter = InviteExporter.new(invite_exporter_params)

    respond_to do |format|
      if @invite_exporter.save
        format.html { redirect_to @invite_exporter, notice: 'Invite exporter was successfully created.' }
        format.json { render :show, status: :created, location: @invite_exporter }
      else
        format.html { render :new }
        format.json { render json: @invite_exporter.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @invite_exporter.update(invite_exporter_params)
        format.html { redirect_to @invite_exporter, notice: 'Invite exporter was successfully updated.' }
        format.json { render :show, status: :ok, location: @invite_exporter }
      else
        format.html { render :edit }
        format.json { render json: @invite_exporter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @invite_exporter.destroy
    respond_to do |format|
      format.html { redirect_to invite_exporters_url, notice: 'Invite exporter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_invite_exporter
      @invite_exporter = InviteExporter.find(params[:id])
    end

    def invite_exporter_params
      params.fetch(:invite_exporter, {})
    end
end
