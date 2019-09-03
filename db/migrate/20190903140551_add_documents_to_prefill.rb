class AddDocumentsToPrefill < ActiveRecord::Migration[5.2]
  def change
    add_attachment :prefills, :supply_contract
    add_attachment :prefills, :document_one
    add_attachment :prefills, :document_two
    add_attachment :prefills, :document_three
    add_attachment :prefills, :document_four
    add_attachment :prefills, :document_five
  end
end
