class User < ActiveRecord::Base
	acts_as_authentic
	attr_accessible :name, :email, :password
    has_many :events, :dependent => :destroy

end
