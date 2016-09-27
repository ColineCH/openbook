class AddCommentToRecords < ActiveRecord::Migration[5.0]
  def change
    add_reference :records, :comment, foreign_key: true
  end
end
