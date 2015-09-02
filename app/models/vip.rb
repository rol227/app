class Vip < ActiveRecord::Base
	has_many :events
	has_many :organizations, :through => :events
end
