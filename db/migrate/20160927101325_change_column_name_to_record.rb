class ChangeColumnNameToRecord < ActiveRecord::Migration[5.0]
  def change
    rename_column :records, :star, :stars
  end
end
