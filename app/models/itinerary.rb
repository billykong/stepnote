class Itinerary < ApplicationRecord
	has_many :events, dependent: :nullify


	def initialize(*args, &block)
	  super 
	  if self.events_id == nil
	  	self.events_id = []
	  end
	end
end
