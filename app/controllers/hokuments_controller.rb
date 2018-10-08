class HokumentsController < ApplicationController

  before_action :set_hokument, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
  before_action :is_authorised, only: [:update]

  def index
    @hokuments = current_user.hokuments
  end

  def new
    @hokument = current_user.hokuments.build
  end


  def create
    @hokument = current_user.hokuments.build(hokument_params)
    if @hokument.save
      redirect_to work_hokument_path(@hokument), notice: "Create Saved...."
    else
      flash[:alert] = "Something went wrong...."
      render :new
    end
  end

  def update
    if @hokument.update(hokument_params)
      flash[:notice] = "Update Saved ...."
    else
      flash[:alert] = "Something went wrong"
    end
    redirect_back(fallback_location: request.referer)
  end

  private

  def set_hokument
    @hokument = Hokument.find(params[:id])
  end

  def hokument_params
    params.require(:hokument).permit(:heskription, :avatar, :invoicetwo, :balancesheet, :otherdoc)
  end

  def is_authorised
    redirect_to root_path, alert: "You don't have permission" unless current_user.id = @hokument.user_id
  end

end