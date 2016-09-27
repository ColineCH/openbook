class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.references :book_identification, foreign_key: true
      t.references :user, foreign_key: true
      t.references :city, foreign_key: true
      t.integer :star
      t.text :comment
      t.boolean :first_record

      t.timestamps
    end
  end
end
