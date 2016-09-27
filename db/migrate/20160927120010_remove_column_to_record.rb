class RemoveColumnToRecord < ActiveRecord::Migration[5.0]
  def change
    remove_column :records, :stars
  end
end
