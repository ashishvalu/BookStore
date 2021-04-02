class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.string :phone, limit: 15
      t.string :website
      t.string :gender, limit: 1

      t.timestamps
    end
  end
end
