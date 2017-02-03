class Event < ApplicationRecord
	belongs_to :itinerary
	validates :itinerary, presence: true

	has_attached_file :thumbnail,
                  styles: { thumb: ["400x200#", :jpg],
                  					original: ['1024x768>', :jpg]  },
                  # convert_options: { thumb: "-quality 100 -strip",
                  #                    original: "-quality 100 -strip" },
                  url: "/event_images/:hash.:extension",
                  hash_secret: Rails.application.secrets.paperclip_image_hash_secret

	validates_attachment :thumbnail, presence: true,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                     size: { in: 0..5000.kilobytes }

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
