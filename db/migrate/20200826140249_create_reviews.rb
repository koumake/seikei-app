class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.string :treatment_site, null: false
      t.string :date, null: false
      t.string :clinic, null: false
      t.string :docter, null: false
      t.string :price, null: false
      t.text :content, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
