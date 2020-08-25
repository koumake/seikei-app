class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :title, null: false
      t.string :date_time, null: false
      t.string :plece, null: false
      t.string :number, null: false
      t.text :target_person, null: false
      t.text :content, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
