class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :text
      t.integer :user_id
      t.integer :repeat_id

      t.timestamps
    end
  end
end
