class CreateRepeats < ActiveRecord::Migration
  def change
    create_table :repeats do |t|
      t.string :text

      t.timestamps
    end
  end
end
