class Vip < ActiveRecord::Base
	belongs_to :organization
	belongs_to :event
end
