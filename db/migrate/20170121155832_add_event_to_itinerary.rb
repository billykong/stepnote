class AddEventToItinerary < ActiveRecord::Migration[5.0]
  def change
  	add_reference :itineraries, :events, array: true
  end
end
