class CreateBookIdentifications < ActiveRecord::Migration[5.0]
  def change
    create_table :book_identifications do |t|
      t.integer :identification
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
