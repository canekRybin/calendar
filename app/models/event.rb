class Event < ActiveRecord::Base
  attr_accessible :name, :content
  belongs_to :user
  belongs_to :repeat
  
  validates :name, :presence => true, :length => { :maximum => 140 }
  validates :content, :presence => true
  #validates :id_user, :presence => true
  #validates :date, :presence => true
  
  default_scope :order => 'events.created_at DESC'

end
