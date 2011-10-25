class User < ActiveRecord::Base
	acts_as_authentic
	attr_accessible :name, :email, :password, :password_confirmation
  has_many :events, :dependent => :destroy

end
