class DocusignsController < ApplicationController
    before_action :set_docusign, only: [:show, :edit, :update, :destroy]
    
    def index
        @docusigns = Docusign.all
    end
    
    def show
    end
    
    def new
        @docusign = Docusign.new
        notify_docusign
    end
    
    def edit
    end
    
    def create
        @docusign = Docusign.new(docusign_params)
        
        respond_to do |format|
            if @docusign.save
                format.html { redirect_to @docusign, notice: 'Docusign was successfully created.' }
                format.json { render :show, status: :created, location: @docusign }
            else
                format.html { render :new }
                format.json { render json: @docusign.errors, status: :unprocessable_entity }
            end
        end
    end
    
    def update
        respond_to do |format|
            if @docusign.update(docusign_params)
                format.html { redirect_to @docusign, notice: 'Docusign was successfully updated.' }
                format.json { render :show, status: :ok, location: @docusign }
            else
                format.html { render :edit }
                format.json { render json: @docusign.errors, status: :unprocessable_entity }
            end
        end
    end
    
    def destroy
        @docusign.destroy
        respond_to do |format|
            format.html { redirect_to docusigns_url, notice: 'Docusign was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    def notify_docusign
      UserMailer.notify_docusign_email.deliver_now
      flash[:notice] = "den Forfaitierungsvertrag freigeben...."
    end
    
    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_docusign
        @docusign = Docusign.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def docusign_params
        params.fetch(:docusign, {})
    end
end
