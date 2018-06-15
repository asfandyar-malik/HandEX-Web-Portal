class AttachmentsController < ApplicationController

    def create
        @invoice = Invoice.find(params[:invoice_id])
        if params[:images]
            params[:images].each do |img|
                @invoice.attachments.create(image: img)
            end
            @attachments = @invoice.attachments
            redirect_back(fallback_location: request.referer, notice: "Saved...")
        end
    end

    def destroy
        @attachment = Attachment.find(params[:id])
        @invoice = @attachment.invoice
        @attachment.destroy
        @attachments = Attachment.where(invoice_id: @invoice.id)
        respond_to :js
    end
end