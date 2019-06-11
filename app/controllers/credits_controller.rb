class CreditsController < ApplicationController

  before_action :set_credit, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :is_authorised, only: [:update]

  def index
    @new_credits = filer_credit_by_status "new"
    @credits = Credit.all
  end

  def show
  end

  def new
    @credit= current_user.credits.build
  end

  def edit
  end

  # def create
  #   @credit= current_user.credits.build(credit_params)
  #   if @credit.save
  #     redirect_to pages_submitted_application_path, notice: 'Antrag wurde erfolgreich erstellt.'
  #   else
  #     flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
  #     render :new
  #   end
  # end
  #
  def create
    @credit = current_user.credits.build(credit_params)
    if params[:draft] == 'Entwurf speichern'
      @credit.application_status = 'draft_application'
      if @credit.save
        redirect_to "/credits/" + @credit.id.to_s + "/edit", notice: 'Antrag wurde erfolgreich aktualisiert.'        else
                                                                                                                                               flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
                                                                                                                                               render :new
      end
    else
      @credit.application_status = 'new'
      if @credit.save
        redirect_to pages_submitted_application_path, notice: 'Antrag wurde erfolgreich erstellt.'
      else
        flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
        render :new
      end
      # save as published
    end

  end

  # def update
  #   if @credit.update(credit_params)
  #     redirect_to pages_submitted_application_path, notice: 'Antrag wurde erfolgreich aktualisiert.'
  #   else
  #     flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
  #   end
  # end

  def update
    if params[:draft] == 'Entwurf speichern'
      @credit.application_status = 'draft_application'
      if @credit.update(credit_params)
        redirect_to "/credits/" + @credit.id.to_s + "/edit", notice: 'Antrag wurde erfolgreich aktualisiert.'
      else
        flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
        render :update
      end
    else
      @credit.application_status = 'new'
      if @credit.update(credit_params)
        redirect_to pages_submitted_application_path, notice: 'Antrag wurde erfolgreich gespeichert.'
      else
        flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
        render :update
      end
      # save as published
    end
  end

  
  def destroy
    @credit.destroy
    redirect_to credits_url, notice: 'Antrag wurde erfolgreich zerstört'
    head :no_content
  end

  private

  def filer_credit_by_status status
    current_user.credits.where("application_status = ?", status)
  end

  def set_credit
    @credit= Credit.find(params[:id])
  end

  def is_authorised
    redirect_to root_path, alert: "You don't have permission" unless current_user.id = @credit.user_id
  end

  def credit_params
    params.require(:credit).permit()
  end
end
