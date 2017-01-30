class Event < ApplicationRecord
	belongs_to :itinerary
	validates :itinerary, presence: true

	after_create :append_event_to_itinerary
	after_destroy :remove_event_from_itinerary

	private

	def append_event_to_itinerary
		self.itinerary.events_id.push(self.id)
		self.itinerary.save
	end

	def remove_event_from_itinerary
		self.itinerary.events_id.delete(self.id)
		self.itinerary.save
	end
end
