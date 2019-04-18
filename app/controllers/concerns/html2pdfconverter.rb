module Html2pdfconverter
  include ActiveSupport::Concern

  def configure_html_to_pdf(output_file_name:, layout:, view:)
    # @param output_file_name Expected filename format: #{controller}/#{action}.html.erb
    # @param layout           Layout file, where the dependency management is done with helpers from Wicked PDF library.
    # @param view             Expected filename format: #{controller}s/#{action}.html.erb'
    respond_to do |format|
        format.html
        format.pdf do
            render pdf: output_file_name,
                   disposition: "inline",
                   template: view,
                   layout: layout,
                   show_as_html: params[:debug].present?,
                   page_size: 'A4'
        end
    end
  end

end