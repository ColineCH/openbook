class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publishing_year
      t.text :back_cover
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
