class PhotosController < ApplicationController

    def create
        @document = Document.find(params[:document_id])
        if params[:images]
            params[:images].each do |img|
                @document.photos.create(image: img)
            end
            @photos = @document.photos
            redirect_back(fallback_location: request.referer, notice: "Saved...")
        end
    end

    def destroy
        @photo = Photo.find(params[:id])
        @document = @photo.document
        @photo.destroy
        @photos = Photo.where(document_id: @document.id)
        respond_to :js
    end
end