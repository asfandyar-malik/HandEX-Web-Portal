class DocumentsController < ApplicationController

    before_action :set_document, except: [:index, :new, :create]
    before_action :authenticate_user!, except: [:show]
    before_action :is_authorised, only: [:listing, :pricing, :description, :photo_upload, :update]

    def index
        @documents = current_user.documents
    end

    def new
        @document = current_user.documents.build
    end

    def create
        @document = current_user.documents.build(document_params)
        if @document.save
            redirect_to listing_document_path(@document), notice: "Saved...."
        else
            flash[:alert] = "Something went wrong...."
            render :new
        end
    end

    def show
        @photos = @document.photos
    end

    def listing
    end

    def pricing
    end

    def description
    end

    def photo_upload
        @photos = @document.photos
    end

    def amenities
    end

    def location
    end

    def update
        if @document.update(document_params)
            flash[:notice] = "Saved ...."
        else
            flash[:alert] = "Something went wrong"
        end
        redirect_back(fallback_location: request.referer)
    end

    private

    def set_document
        @document = Document.find(params[:id])
    end

    def is_ready_document
        !@document.document_type? && !@document.year
    end

    def is_authorised
        redirect_to root_path, alert: "You don't have permission" unless current_user.id = @document.user_id
    end

    def document_params
        params.require(:document).permit(:document_type, :year)
    end

end
