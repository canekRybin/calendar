class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :content
      t.datetime :date
      t.integer :id_user
      t.integer :id_repeat

      t.timestamps
    end
    add_index :events, :id_user
    add_index :events, :created_at

  end
end
