class AddContentToRepeats < ActiveRecord::Migration
  def up
    Repeat.create(:text => 'day')
    Repeat.create(:text => 'week')
    Repeat.create(:text => 'month')
    Repeat.create(:text => 'year')
  end

end
