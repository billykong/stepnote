class Itinerary < ApplicationRecord
	has_many :events, dependent: :nullify
end
