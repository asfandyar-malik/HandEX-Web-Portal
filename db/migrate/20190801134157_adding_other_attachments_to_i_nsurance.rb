class AddingOtherAttachmentsToINsurance < ActiveRecord::Migration[5.2]
  def change
    add_attachment :insurances, :other_document
    add_attachment :insurances, :self_declaration
  end
end
