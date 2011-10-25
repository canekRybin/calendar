class Event < ActiveRecord::Base
  attr_accessible :name, :text, :date
  belongs_to :user
  belongs_to :repeat
  
  validates :name, :presence => true, :length => { :maximum => 140 }
  validates :text, :presence => true
  validates :user_id, :presence => true
  #validates :repeat_id, :presence => true
  
  default_scope :order => 'events.created_at DESC'

end
