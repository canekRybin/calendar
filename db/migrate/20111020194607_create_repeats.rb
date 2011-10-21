class CreateRepeats < ActiveRecord::Migration
  def change
    create_table :repeats do |t|
      t.string :content

      t.timestamps
    end
  end
end
