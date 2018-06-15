class InvoicesController < ApplicationController

    before_action :set_invoice, except: [:index, :new, :create]
    before_action :authenticate_user!, except: [:show]
    before_action :is_authorised, only: [:listing, :pricing, :description,:attachment_upload, :update]

    def index
        @invoices = current_user.invoices
    end

    def new
        @invoice = current_user.invoices.build
    end

    def create
        @invoice = current_user.invoices.build(invoice_params)
        if @invoice.save
            redirect_to listing_invoice_path(@invoice), notice: "Saved...."
        else
            flash[:alert] = "Something went wrong...."
            render :new
        end
    end

    def show
        @attachments = @invoice.attachments
    end

    def listing
    end

    def pricing
    end

    def description
    end

    def attachment_upload
        @attachments = @invoice.attachments
    end

    def location
    end

    def update
        if @invoice.update(invoice_params)
            flash[:notice] = "Saved ...."
        else
            flash[:alert] = "Something went wrong"
        end
        redirect_back(fallback_location: request.referer)
    end

    private

    def set_invoice
        @invoice = Invoice.find(params[:id])
    end

    def is_ready_invoice
        !@invoice.belong_me? && !@invoice.defect_free
    end

    def is_authorised
        redirect_to root_path, alert: "You don't have permission" unless current_user.id = @invoice.user_id
    end

    def invoice_params
        params.require(:invoice).permit(:belong_me, :defect_free, :delivered_specific_date, :currency, :grand_total_invoice_value)
    end

end
