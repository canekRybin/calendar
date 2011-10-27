class Repeat < ActiveRecord::Base
  has_many :events
  def name_repeat
   return "#{text}"
  end
end
