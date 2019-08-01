class AddMoreAttachmentsToExporterApplications < ActiveRecord::Migration[5.2]
  def change
    add_attachment :export_applications, :self_declaration
    add_attachment :export_applications, :annual_financial_statement_exporter
    add_attachment :export_applications, :annual_financial_statement_exporter_second_last
  end
end
