class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.references :publisher, null: false, foreign_key: true
      t.references :categary, null: false, foreign_key: true
      t.string :isbn10, limit: 10
      t.string :isbn13, limit: 13
      t.string :language, limit: 10
      t.decimal :price
      t.string :discount_type, limit: 10
      t.decimal :discount

      t.timestamps
    end
  end
end
