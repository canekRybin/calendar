class AddToEvents < ActiveRecord::Migration
  def up
  
  end

  def down
  Event.delete_all
  end
end
