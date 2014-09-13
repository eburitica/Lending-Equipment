class Estado < ActiveRecord::Base
	has_many :elementos

	validates :nombre, :presence => true
end
