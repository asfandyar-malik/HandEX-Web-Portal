
module Html2pdfconverter
  include ActiveSupport::Concern

  def configure_html_to_pdf(output_file_name:, layout:, view:)
    # output_file_name:   #{controller}/#{action}.html.erb
    # view:               #{controller}s/#{action_name}.html.erb'
    #                     Take care of the difference between these two parameters:
    #                     The lower one required pluralisation of controller name
    # layout:             This is a separate layout file that mimics the original lauyout file
    #                     The only difference to the original layout file is the asset management, and
    #                     the dependency management
    #                     More info at: https://handex.atlassian.net/wiki/spaces/BAC/pages/164560939/Wicked+pdf+rendering+issues

    respond_to do |format|
        format.html
        format.pdf do
            render pdf: output_file_name,
                   disposition: "inline",
                   template: view,
                   layout: layout,
                   show_as_html: params[:debug].present?,
                   page_size: 'A4'
                   # dpi: '300'
        end
    end
  end

end
