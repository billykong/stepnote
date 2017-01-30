class AddItineraryToEvent < ActiveRecord::Migration[5.0]
  def change
  	add_reference :events, :itinerary, index: true
  	add_foreign_key :events, :itineraries, column: :itinerary_id
  end
end
