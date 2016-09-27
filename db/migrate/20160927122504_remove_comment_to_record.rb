class RemoveCommentToRecord < ActiveRecord::Migration[5.0]
  def change
    remove_column :records, :comment
  end
end
