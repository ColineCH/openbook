class ChangeColumnNameToBookIdentification < ActiveRecord::Migration[5.0]
  def change
    rename_column :book_identifications, :identification, :identification_number
  end
end
